#!/usr/bin/env bash
# Render the web site as per-unit isolated quarto projects in parallel, then
# merge into a single _site. Each unit renders with its own source dir, so the
# shared .quarto scratch, mediabag dirs, and site_libs never race across units.
# The full unified navigation is provided at runtime by the <mecfs-sidebar>
# web component (see mecfs-sidebar.js + mecfs-sidebar.json).
#
# Requires: run from repo root in `nix develop`. Produces target/site/ and the
# site-level files (search.json, sitemap.xml, robots.txt, listings.json) via
# GenerateSiteIndex.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
WEB="$ROOT/target/quarto"
STAGE="$ROOT/target/units"
SITE="$ROOT/target/site"
UNIT_YML="$WEB/_quarto-unit.yml"

CORES=$(nproc)
CONCURRENCY=$(( CORES > 8 ? 8 : CORES ))
MAX_RETRIES=2

echo "=== Isolated parallel web build ==="
echo "ROOT=$ROOT WEB=$WEB CONCURRENCY=$CONCURRENCY"

# Clean staging + site
rm -rf "$STAGE" "$SITE"
mkdir -p "$STAGE" "$SITE"

# Units: <source-path-in-web> <render-target>. Rendering the whole unit dir or a
# single file. Each becomes its own isolated project.
# Directories:
DIR_UNITS="front-matter part1-clinical part2-pathophysiology part3-treatment part4-research part5-modeling z-appendices faq patient-resources en/blog de/blog fr/blog"
# Single files (rendered into _site/ root):
FILE_UNITS="index.qmd about.qmd"

# Shared assets copied into every unit project.
copy_shared() {
  local dst="$1"
  cp -r "$WEB/bib" "$WEB/figures" "$WEB/logos" "$dst/" 2>/dev/null || true
  cp "$WEB/glossary-en.json" "$WEB/glossary-fr.json" "$WEB/glossary-de.json" \
     "$WEB/styles.css" "$WEB/mecfs-sidebar.js" "$WEB/mecfs-sidebar.json" \
     "$WEB/mecfs-sidebar.html" "$WEB/mecfs-breadcrumb.js" "$WEB/part-accordion.js" "$WEB/part-chapters.json" \
     "$dst/" 2>/dev/null || true
}

# Make a staged project fully writable and pre-create the quarto .gitignore
# entries so quarto's ensureGitignore does not attempt a (possibly failing) write
# in a read-only source tree (nix sandbox).
prepare_project() {
  local proj="$1"
  chmod -R u+w "$proj" 2>/dev/null || true
  # Ensure a .gitignore with quarto's required entries is present.
  if [ ! -f "$proj/.gitignore" ] || ! grep -q '/.quarto/' "$proj/.gitignore" 2>/dev/null; then
    printf '/.quarto/\n**/*.quarto_ipynb\n' > "$proj/.gitignore"
  fi
}

# Stage one directory unit as an isolated project. proj name = path with / -> _.
# The source is placed at its original relative path (e.g. en/blog) so it
# renders to the correct _site/en/blog path.
stage_dir_unit() {
  local src="$1" rel
  rel="${src#$WEB/}"          # e.g. "en/blog" or "part1-clinical"
  local pname="$(echo "$rel" | tr '/' '_')"
  local proj="$STAGE/$pname"
  mkdir -p "$proj/$(dirname "$rel")"
  cp -r "$src" "$proj/$rel"
  copy_shared "$proj"
  cp "$UNIT_YML" "$proj/_quarto.yml"
  # The unit's _metadata.yml (e.g. blog sidebar:false) if present
  [ -f "$src/_metadata.yml" ] && cp "$src/_metadata.yml" "$proj/$rel/_metadata.yml" 2>/dev/null || true
  prepare_project "$proj"
  echo "$proj"
}

# Stage one single-file unit (index.qmd, about.qmd).
stage_file_unit() {
  local f="$1" stem
  stem="${f%.qmd}"
  local proj="$STAGE/file-$stem"
  mkdir -p "$proj"
  cp "$WEB/$f" "$proj/$f"
  copy_shared "$proj"
  cp "$UNIT_YML" "$proj/_quarto.yml"
  # The home page lists recent blog posts; stage the EN posts so its
  # `listing: contents: en/blog/posts` glob resolves.
  if [ "$stem" = "index" ]; then
    mkdir -p "$proj/en/blog"
    cp -r "$WEB/en/blog/posts" "$proj/en/blog/posts"
  fi
  prepare_project "$proj"
  echo "$proj"
}

# --- Stage all units ---
PROJECTS=()
for u in $DIR_UNITS; do
  PROJECTS+=("$(stage_dir_unit "$WEB/$u")")
done
for f in $FILE_UNITS; do
  PROJECTS+=("$(stage_file_unit "$f")")
done
echo "Staged ${#PROJECTS[@]} unit projects."

# --- Render a project (from its dir). Prints result to $proj/.done ---
render_one() {
  local proj="$1"
  local log="$proj/render.log"
  if ( cd "$proj" && quarto render . --to html ) >"$log" 2>&1; then
    echo "  DONE: $(basename "$proj")"
    touch "$proj/.done"
    return 0
  else
    echo "  FAILED: $(basename "$proj")"
    return 1
  fi
}
export -f render_one

echo "=== Parallel render ==="
printf '%s\n' "${PROJECTS[@]}" | xargs -P "$CONCURRENCY" -I{} bash -c 'render_one "$1"' _ {} || true

# Retry failures
for attempt in $(seq 1 "$MAX_RETRIES"); do
  failed=()
  for p in "${PROJECTS[@]}"; do
    [ -f "$p/.done" ] || failed+=("$p")
  done
  [ "${#failed[@]}" -eq 0 ] && break
  echo "=== Retry $attempt: ${#failed[@]} units ==="
  printf '%s\n' "${failed[@]}" | xargs -P "$CONCURRENCY" -I{} bash -c 'rm -f "$1/.done"; render_one "$1"' _ {} || true
done

# --- Verify all succeeded ---
missing=()
for p in "${PROJECTS[@]}"; do
  [ -f "$p/.done" ] || missing+=("$p")
done
if [ "${#missing[@]}" -gt 0 ]; then
  echo "ERROR: failed units: ${missing[*]}"
  for p in "${missing[@]}"; do tail -8 "$p/render.log"; done
  exit 1
fi

# --- Merge _site outputs ---
echo "=== Merging _site ==="
# Copy each unit's output. Use --remove-destination so overlapping files (e.g.
# site_libs) are overwritten without permission conflicts.
# Blog units emit a default root index.html; skip it so the real home page
# (from the file-index unit) wins.
for p in "${PROJECTS[@]}"; do
  [ -d "$p/_site" ] || continue
  if [[ "$p" == *_blog ]]; then
    # copy everything except the root index.html
    find "$p/_site" -mindepth 1 -maxdepth 1 ! -name index.html -exec cp -r --remove-destination {} "$SITE/" \; 2>/dev/null || true
  else
    cp -r --remove-destination "$p/_site/." "$SITE/"
  fi
done
# Ensure the real home page is copied last (from the file-index unit).
for p in "${PROJECTS[@]}"; do
  [ "$(basename "$p")" = "file-index" ] && [ -f "$p/_site/index.html" ] && cp --remove-destination "$p/_site/index.html" "$SITE/index.html"
done

echo "Rendered HTML files: $(find "$SITE" -name '*.html' | wc -l)"
echo "Done staging + render + merge."

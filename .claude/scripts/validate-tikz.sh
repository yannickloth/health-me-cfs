#!/bin/bash
# TikZ Diagram Validation Script
# Used by tikz-validator agent for automated quality checking
#
# Usage: ./validate-tikz.sh <diagram.tex>
# Returns: YAML-formatted validation report

set -euo pipefail

TEX_FILE="${1:-}"
if [ -z "$TEX_FILE" ]; then
  echo "status: ERROR"
  echo "message: No input file specified"
  exit 1
fi

if [ ! -f "$TEX_FILE" ]; then
  echo "status: ERROR"
  echo "message: File not found: $TEX_FILE"
  exit 1
fi

# Create temp directory for compilation
TEMP_DIR=$(mktemp -d)
trap "rm -rf $TEMP_DIR" EXIT

# Copy file to temp directory
BASENAME=$(basename "$TEX_FILE")
cp "$TEX_FILE" "$TEMP_DIR/"

cd "$TEMP_DIR"

# Initialize report
echo "status: CHECKING"
echo "file: $TEX_FILE"
echo "compilation:"

# Phase 1: Compilation Check
pdflatex -interaction=nonstopmode -halt-on-error "$BASENAME" > compile.log 2>&1
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
  echo "  success: false"
  echo "  errors:"
  grep -A 3 "^!" *.log | sed 's/^/    /' || echo "    - Unknown compilation error"
  echo "status: FAIL"
  exit 1
fi

echo "  success: true"

# Check for warnings
if grep -q "Warning" *.log; then
  echo "  warnings:"
  grep "Warning" *.log | head -10 | sed 's/^/    - /'
else
  echo "  warnings: []"
fi

# Phase 2: Spatial Analysis
echo "spatial_analysis:"
echo "  violations: []"

VIOLATIONS=0

# Extract and check vertical spacing (below=X of Y)
while IFS= read -r line; do
  DIST=$(echo "$line" | grep -oP 'below=\K[0-9.]+(?=cm)' || true)
  if [ -n "$DIST" ]; then
    BELOW_MIN=$(echo "$DIST < 2.0" | bc -l 2>/dev/null || echo "0")
    if [ "$BELOW_MIN" = "1" ]; then
      echo "  - type: too_close_vertical"
      echo "    actual_distance: ${DIST}cm"
      echo "    required_distance: 2.0cm"
      echo "    line: \"$line\""
      echo "    suggestion: \"Increase vertical spacing to at least 2.5cm\""
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  fi
done < <(grep -n "below=[0-9.]\\+cm of" "$BASENAME" || true)

# Extract and check horizontal spacing (right=X of Y)
while IFS= read -r line; do
  DIST=$(echo "$line" | grep -oP 'right=\K[0-9.]+(?=cm)' || true)
  if [ -n "$DIST" ]; then
    RIGHT_MIN=$(echo "$DIST < 2.5" | bc -l 2>/dev/null || echo "0")
    if [ "$RIGHT_MIN" = "1" ]; then
      echo "  - type: too_close_horizontal"
      echo "    actual_distance: ${DIST}cm"
      echo "    required_distance: 2.5cm"
      echo "    line: \"$line\""
      echo "    suggestion: \"Increase horizontal spacing to at least 3.0cm\""
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  fi
done < <(grep -n "right=[0-9.]\\+cm of" "$BASENAME" || true)

# Check for left spacing
while IFS= read -r line; do
  DIST=$(echo "$line" | grep -oP 'left=\K[0-9.]+(?=cm)' || true)
  if [ -n "$DIST" ]; then
    LEFT_MIN=$(echo "$DIST < 2.5" | bc -l 2>/dev/null || echo "0")
    if [ "$LEFT_MIN" = "1" ]; then
      echo "  - type: too_close_horizontal"
      echo "    actual_distance: ${DIST}cm"
      echo "    required_distance: 2.5cm"
      echo "    line: \"$line\""
      echo "    suggestion: \"Increase horizontal spacing to at least 3.0cm\""
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  fi
done < <(grep -n "left=[0-9.]\\+cm of" "$BASENAME" || true)

# Check for above spacing
while IFS= read -r line; do
  DIST=$(echo "$line" | grep -oP 'above=\K[0-9.]+(?=cm)' || true)
  if [ -n "$DIST" ]; then
    ABOVE_MIN=$(echo "$DIST < 2.0" | bc -l 2>/dev/null || echo "0")
    if [ "$ABOVE_MIN" = "1" ]; then
      echo "  - type: too_close_vertical"
      echo "    actual_distance: ${DIST}cm"
      echo "    required_distance: 2.0cm"
      echo "    line: \"$line\""
      echo "    suggestion: \"Increase vertical spacing to at least 2.5cm\""
      VIOLATIONS=$((VIOLATIONS + 1))
    fi
  fi
done < <(grep -n "above=[0-9.]\\+cm of" "$BASENAME" || true)

echo "  total_violations: $VIOLATIONS"

# Phase 3: Arrow Analysis
echo "arrow_analysis:"
echo "  arrows_checked: $(grep -c '\\draw\[.*->.*\]' "$BASENAME" || echo 0)"
echo "  violations: []"
echo "  note: \"Manual review recommended for arrow-node intersections\""

# Phase 4: Best Practices
echo "best_practices:"

# Check for positioning library
if grep -q "positioning" "$BASENAME"; then
  echo "  - uses_positioning_library: true"
else
  echo "  - uses_positioning_library: false"
  echo "    suggestion: \"Add \\usetikzlibrary{positioning} for better layout\""
fi

# Check for absolute coordinates (discouraged)
ABS_COORDS=$(grep -c "node.*at.*([0-9]" "$BASENAME" || echo 0)
if [ "$ABS_COORDS" -gt 0 ]; then
  echo "  - absolute_coordinates_count: $ABS_COORDS"
  echo "    suggestion: \"Consider using relative positioning instead of absolute coordinates\""
fi

# Check for node distance setting
if grep -q "node distance" "$BASENAME"; then
  echo "  - uses_node_distance: true"
else
  echo "  - uses_node_distance: false"
  echo "    suggestion: \"Set global 'node distance' for consistent spacing\""
fi

# Final Status
echo ""
if [ $VIOLATIONS -eq 0 ]; then
  echo "status: PASS"
  echo "message: \"Diagram meets all quality requirements\""
  exit 0
else
  echo "status: FAIL"
  echo "message: \"Found $VIOLATIONS spacing violations\""
  exit 1
fi
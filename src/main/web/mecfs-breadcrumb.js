// mecfs-breadcrumb.js — breadcrumbs + previous/next chapter navigation.
// Reads the same site navigation manifest as <mecfs-sidebar> (mecfs-sidebar.json),
// locates the current page in it, then injects:
//   - a breadcrumb trail ("Home / Part I / Chapter 3 / Section") at the top of
//     the article, and
//   - Previous / Next navigation at the bottom of the article.
// On multi-section pages the Previous/Next pager first steps between sections
// (from the Quarto "On this page" TOC) and only crosses to the neighbouring
// page at the section boundaries, so a reader deep in a long chapter can
// advance by section. The pager tracks the URL hash to stay in step.
// Both derive entirely from the manifest's reading order, so a reader who
// lands mid-document can move forward, backward, or up in one click.
//
// The component is inert (renders nothing) when the manifest is missing or the
// current page is not a document chapter/page (e.g. blog posts, FAQ).

(() => {
  const SCRIPT_EL = document.querySelector('script[src$="mecfs-breadcrumb.js"]');
  let BASE_URL = '/';
  if (SCRIPT_EL) {
    const src = SCRIPT_EL.getAttribute('src') || '';
    try {
      if (src.startsWith('http')) {
        BASE_URL = new URL('.', src).href;
      } else {
        const resolved = new URL(src, location.href).href;
        BASE_URL = new URL('.', resolved).href;
      }
    } catch (e) { BASE_URL = '/'; }
  }
  const MANIFEST_URL = new URL('mecfs-sidebar.json', BASE_URL).href;

  // Normalize a path to the manifest's root-relative href form
  // ("/part1-clinical/ch01-introduction/index.html").
  function normalize(p) {
    let basePath = '';
    try { basePath = new URL(BASE_URL).pathname; } catch (e) {}
    if (basePath && basePath !== '/' && p.startsWith(basePath)) {
      p = p.slice(basePath.length);
    }
    if (!p.startsWith('/')) p = '/' + p;
    if (p.endsWith('/')) p += 'index.html';
    return p;
  }

  function currentPath() {
    return normalize(location.pathname);
  }

  // Absolute URL from the current page to a site-root-relative target.
  function relHref(target) {
    let basePath = '';
    try { basePath = new URL(BASE_URL).pathname; } catch (e) {}
    let t = target.replace(/^\//, '');
    let full = (basePath && basePath !== '/' ? basePath : '/') + t;
    return new URL(full, location.href).href;
  }

  function el(tag, className, attrs) {
    const e = document.createElement(tag);
    if (className) e.className = className;
    if (attrs) for (const [k, v] of Object.entries(attrs)) e.setAttribute(k, v);
    return e;
  }

  // Flatten the manifest into a linear list of navigable nodes:
  //   { label, href, ancestors:[{label,href}] }
  // where ancestors is the breadcrumb trail (part -> chapter section).
  // A node is included when it has a clickable href. Section headers that link
  // to a landing page (part title / chapter intro) are treated as navigable
  // landings so reading can flow linearly through the whole document.
  function flatten(items, ancestors) {
    const out = [];
    const trail = ancestors || [];
    for (const item of items) {
      const trailForChildren = item.type === 'section' && item.href
        ? trail.concat([{ label: item.label, href: item.href }])
        : trail;
      if (item.href) {
        out.push({
          label: item.label,
          href: item.href,
          ancestors: trail,
        });
      }
      if (item.children && item.children.length) {
        out.push(...flatten(item.children, trailForChildren));
      }
    }
    return out;
  }

  // Find the index of the node matching the current page path.
  function findCurrent(flat) {
    const cur = currentPath();
    for (let i = 0; i < flat.length; i++) {
      if (flat[i].href && normalize(flat[i].href) === cur) return i;
    }
    return -1;
  }

  // Build the breadcrumb <ol> from the current node's ancestor trail.
  function buildBreadcrumb(node) {
    const ol = el('ol', 'breadcrumb mecfs-breadcrumb');
    const homeLi = el('li', 'breadcrumb-item');
    const homeA = el('a', '', { href: relHref('/index.html') });
    homeA.textContent = 'Home';
    homeLi.appendChild(homeA);
    ol.appendChild(homeLi);

    for (const anc of node.ancestors) {
      const li = el('li', 'breadcrumb-item');
      const a = el('a', '', { href: relHref(anc.href) });
      a.textContent = anc.label;
      li.appendChild(a);
      ol.appendChild(li);
    }

    const curLi = el('li', 'breadcrumb-item active', { 'aria-current': 'page' });
    curLi.textContent = node.label;
    ol.appendChild(curLi);
    return ol;
  }

  // Collect the current page's sections from Quarto's generated TOC
  // ("On this page"). Each entry: { id, label }. Empty on pages without a TOC.
  // Quarto rewrites the TOC hrefs to absolute URLs, so derive the anchor id
  // from the URL hash portion rather than matching href^="#".
  function getPageSections() {
    const out = [];
    document.querySelectorAll('#TOC .nav-link').forEach(a => {
      const href = a.getAttribute('href') || '';
      const hashIdx = href.indexOf('#');
      if (hashIdx < 0) return;
      const id = href.slice(hashIdx + 1);
      const label = a.textContent.trim().replace(/^\d+\s*/, '');
      out.push({ id, label });
    });
    return out;
  }

  // Section-aware previous/next target. On a multi-section page we step between
  // sections first, then cross to the neighbouring page at the boundaries, so a
  // reader deep in a long chapter can advance by section rather than jumping to
  // the next chapter. Returns { href, label, caption } or null.
  function sectionTarget(sections, currentSectionIdx, dir, flat, currentIdx) {
    if (currentSectionIdx >= 0) {
      const within = currentSectionIdx + dir;
      if (within >= 0 && within < sections.length) {
        const s = sections[within];
        return { href: location.pathname + '#' + s.id, label: s.label, caption: dir < 0 ? 'Previous' : 'Next' };
      }
    }
    const neighbour = flat[currentIdx + dir];
    if (!neighbour) return null;
    return {
      href: neighbour.href + (dir > 0 && sections.length ? '#' + sections[0].id : ''),
      label: neighbour.label,
      caption: dir < 0 ? 'Previous' : 'Next',
    };
  }

  // Build the previous/next navigation bar.
  function buildPager(flat, currentIdx, sections, currentSectionIdx) {
    const nav = el('nav', 'mecfs-pager', { 'aria-label': 'Document navigation' });
    const wrap = el('div', 'd-flex justify-content-between mecfs-pager-row');

    const prev = sectionTarget(sections, currentSectionIdx, -1, flat, currentIdx);
    const next = sectionTarget(sections, currentSectionIdx, +1, flat, currentIdx);

    const prevCell = el('div', 'mecfs-pager-item mecfs-pager-prev');
    if (prev) {
      const a = el('a', 'mecfs-pager-link', { href: relHref(prev.href) });
      const label = el('span', 'mecfs-pager-caption');
      label.textContent = prev.caption;
      const title = el('span', 'mecfs-pager-title');
      title.textContent = prev.label;
      a.appendChild(label);
      a.appendChild(title);
      prevCell.appendChild(a);
    }
    wrap.appendChild(prevCell);

    const nextCell = el('div', 'mecfs-pager-item mecfs-pager-next text-end');
    if (next) {
      const a = el('a', 'mecfs-pager-link', { href: relHref(next.href) });
      const label = el('span', 'mecfs-pager-caption');
      label.textContent = next.caption;
      const title = el('span', 'mecfs-pager-title');
      title.textContent = next.label;
      a.appendChild(label);
      a.appendChild(title);
      nextCell.appendChild(a);
    }
    wrap.appendChild(nextCell);

    nav.appendChild(wrap);
    return nav;
  }

  function render() {
    fetch(MANIFEST_URL)
      .then(r => { if (!r.ok) throw new Error('manifest ' + r.status); return r.json(); })
      .then(manifest => {
        const flat = flatten(manifest.items || [], []);
        const currentIdx = findCurrent(flat);
        if (currentIdx < 0) return; // not a document page — render nothing

        const node = flat[currentIdx];
        const content = document.getElementById('quarto-document-content');

        // Breadcrumbs: insert at the very top of the article, before the title.
        if (content) {
          const crumb = buildBreadcrumb(node);
          content.insertBefore(crumb, content.firstChild);
        }

        // Section-aware previous/next. Determine the current section from the
        // URL hash (if it matches a TOC anchor) so the pager can step by section
        // within long pages before crossing to the neighbouring page.
        const sections = getPageSections();
        let currentSectionIdx = -1;
        if (location.hash) {
          const id = location.hash.slice(1);
          currentSectionIdx = sections.findIndex(s => s.id === id);
        }

        // Previous/Next: insert after </main>, before the after-body sidebar.
        const main = document.querySelector('main.content');
        let pagerEl = null;
        if (main && main.parentNode) {
          pagerEl = buildPager(flat, currentIdx, sections, currentSectionIdx);
          const refNode = main.nextSibling;
          main.parentNode.insertBefore(pagerEl, refNode);
        }

        // Keep the pager in step with section changes (TOC clicks, hash links)
        // without a full re-render of the breadcrumb.
        window.addEventListener('hashchange', () => {
          if (!pagerEl) return;
          let idx = -1;
          if (location.hash) {
            const id = location.hash.slice(1);
            idx = sections.findIndex(s => s.id === id);
          }
          const updated = buildPager(flat, currentIdx, sections, idx);
          pagerEl.replaceWith(updated);
          pagerEl = updated;
        });
      })
      .catch(err => {
        // Inert failure: navigation helpers are an enhancement, never an error.
        if (window.location.href.indexOf('localhost') === -1) {
          console.error('[mecfs-breadcrumb] failed to load navigation:', err);
        }
      });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', render);
  } else {
    render();
  }
})();

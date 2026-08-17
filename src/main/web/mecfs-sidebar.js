// mecfs-sidebar.js — <mecfs-sidebar> custom element
// Renders the full unified site navigation from a JSON manifest, injects it
// into the quarto sidebar container, and highlights the active page with its
// ancestor sections expanded. Mirrors quarto's sidebar HTML/CSS classes so the
// existing styles apply unchanged.
//
// Usage: <mecfs-sidebar></mecfs-sidebar> in <body>. Loads ./mecfs-sidebar.json
// (site-root-relative) and computes per-page relative hrefs.

(() => {
  const SCRIPT_EL = document.querySelector('script[src$="mecfs-sidebar.js"]');
  let BASE_URL = '/';
  if (SCRIPT_EL) {
    const src = SCRIPT_EL.getAttribute('src') || '';
    try {
      if (src.startsWith('http')) {
        // Absolute: base is the directory of the script (the site root).
        BASE_URL = new URL('.', src).href;
      } else {
        // Relative (quarto rewrites per page): resolve against current page.
        const resolved = new URL(src, location.href).href;
        BASE_URL = new URL('.', resolved).href;
      }
    } catch (e) { BASE_URL = '/'; }
  }
  const MANIFEST_URL = new URL('mecfs-sidebar.json', BASE_URL).href;

  // Normalize a path: strip site base path, trailing slash, index.html
  function stripBase(p) {
    // If the site is served at a sub-path, the manifest hrefs are root-relative
    // but location.pathname includes the base. Use the base-relative portion.
    let base = BASE_URL; // e.g. https://host/health-me-cfs/
    let basePath = '';
    try { basePath = new URL(base).pathname; } catch (e) {}
    if (basePath && basePath !== '/' && p.startsWith(basePath)) {
      return p.slice(basePath.length);
    }
    // Ensure a leading slash so it matches manifest root-relative hrefs.
    if (!p.startsWith('/')) p = '/' + p;
    return p;
  }

  function normalize(p) {
    let s = stripBase(p);
    if (!s.startsWith('/')) s = '/' + s;
    // Directory form -> index.html form (matches manifest hrefs).
    if (s.endsWith('/')) s += 'index.html';
    return s;
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
    // Resolve the target against the current page's absolute URL.
    return new URL(full, location.href).href;
  }

  function el(tag, className, attrs) {
    const e = document.createElement(tag);
    if (className) e.className = className;
    if (attrs) for (const [k, v] of Object.entries(attrs)) e.setAttribute(k, v);
    return e;
  }

  // Build the nested <ul> sidebar tree. Returns {ul, activeItem}.
  // Each section renders a `sidebar-section` <ul> that receives the section's
  // child <li> elements directly (matching quarto's nesting).
  function buildTree(items, depth, counter, current) {
    const ul = el('ul', 'list-unstyled mt-1');
    let foundActive = null;
    for (const item of items) {
      if (item.type === 'link') {
        const li = el('li', 'sidebar-item');
        const cont = el('div', 'sidebar-item-container');
        const isActive = item.href && current === normalize(stripBase(item.href));
        const a = el('a', isActive ? 'sidebar-item-text sidebar-link active' : 'sidebar-item-text sidebar-link', { href: relHref(item.href) });
        const span = el('span', 'menu-text');
        span.textContent = item.label;
        a.appendChild(span);
        cont.appendChild(a);
        li.appendChild(cont);
        ul.appendChild(li);
        if (isActive && !foundActive) foundActive = a;
      } else if (item.type === 'section') {
        counter.n += 1;
        const id = 'quarto-sidebar-section-' + counter.n;
        const li = el('li', 'sidebar-item sidebar-item-section');
        const cont = el('div', 'sidebar-item-container');
        // True when this section's landing page (chapter intro / part title)
        // is the currently viewed page.
        const sectionActive = item.href && current === normalize(stripBase(item.href));
        // The section header navigates to its landing page (chapter intro /
        // part title) when `href` is present; the chevron always toggles the
        // subtree. When no href exists the header text itself toggles.
        const headA = el('a', 'sidebar-item-text sidebar-link text-start', {
          href: item.href ? relHref(item.href) : undefined,
          'data-bs-toggle': item.href ? undefined : 'collapse',
          'data-bs-target': item.href ? undefined : '#' + id,
          role: 'navigation', 'aria-expanded': 'false'
        });
        if (sectionActive) headA.classList.add('active');
        // A header that links to a landing page should also expand its subtree
        // when clicked, so the visitor sees the chapter's sections (resp. the
        // part's chapters) alongside the intro.
        if (item.href) {
          headA.addEventListener('click', () => {
            subUl.classList.add('show');
            headA.setAttribute('aria-expanded', 'true');
            toggle.setAttribute('aria-expanded', 'true');
            chev.classList.remove('bi-chevron-right');
            chev.classList.add('bi-chevron-down');
          });
        }
        const headSpan = el('span', 'menu-text');
        headSpan.textContent = item.label;
        headA.appendChild(headSpan);
        const toggle = el('a', 'sidebar-item-toggle text-start', {
          'data-bs-toggle': 'collapse', 'data-bs-target': '#' + id, role: 'navigation',
          'aria-expanded': 'false', 'aria-label': 'Toggle section'
        });
        const chev = el('i', 'bi bi-chevron-right ms-2');
        toggle.appendChild(chev);
        cont.appendChild(headA);
        cont.appendChild(toggle);

        // Build the section's children <ul> (the sidebar-section container).
        const subUl = el('ul', `collapse list-unstyled sidebar-section depth${depth}`, { id });
        const sub = buildTree(item.children || [], depth + 1, counter, current);
        subUl.appendChild(sub.ul);
        // Expand when the current page is a child of this section OR is this
        // section's own landing page (chapter intro / part title).
        if (sub.activeItem || sectionActive) {
          subUl.classList.add('show');
          headA.setAttribute('aria-expanded', 'true');
          toggle.setAttribute('aria-expanded', 'true');
          chev.classList.remove('bi-chevron-right');
          chev.classList.add('bi-chevron-down');
          if (sub.activeItem && !foundActive) foundActive = sub.activeItem;
        }
        li.appendChild(cont);
        li.appendChild(subUl);
        ul.appendChild(li);
      }
    }
    return { ul, activeItem: foundActive };
  }

  class MecfsSidebar extends HTMLElement {
    connectedCallback() {
      fetch(MANIFEST_URL)
        .then(r => { if (!r.ok) throw new Error('manifest ' + r.status); return r.json(); })
        .then(manifest => {
          const current = currentPath();
          const counter = { n: 0 };
          const tree = buildTree(manifest.items || [], 1, counter, current);
          this.innerHTML = '';
          this.appendChild(tree.ul);
          setupSidebar(this);
          syncNavbar(current);
        })
        .catch(err => {
          console.error('[mecfs-sidebar] failed to load navigation:', err);
        });
    }
  }
  customElements.define('mecfs-sidebar', MecfsSidebar);

  // Mark the active top-level navbar item based on the current page.
  // Matches the navbar link whose href is a prefix of (or equals) the current path.
  function syncNavbar(current) {
    document.querySelectorAll('.navbar-nav .nav-link').forEach(a => {
      const href = a.getAttribute('href');
      if (!href || href === '#' || href.endsWith('.pdf')) return;
      // Resolve the nav link against the current page to a root-relative path.
      let target;
      try { target = normalize(new URL(href, location.href).pathname); }
      catch (e) { return; }
      const match = target === current
        || (current.startsWith(target) && target.endsWith('/'))
        || (current.startsWith(target) && !target.endsWith('.html'))
        || current.startsWith(target.slice(0, -'/index.html'.length) + '/');
      if (match) {
        a.classList.add('active');
        a.setAttribute('aria-current', 'page');
      } else {
        a.classList.remove('active');
        a.removeAttribute('aria-current');
      }
    });
  }

  // Wire up the sidebar: on desktop keep it docked just below the fixed
  // navbar (tracking the navbar's real height so it never overlaps or leaves a
  // gap); on small screens it becomes an off-canvas drawer toggled by a
  // hamburger, closing on link click, Escape, or outside click.
  function setupSidebar(sidebar) {
    const desktop = window.matchMedia('(min-width: 992px)');

    function syncTop() {
      if (!desktop.matches) { sidebar.style.top = ''; return; }
      const header = document.querySelector('#quarto-header');
      if (header) sidebar.style.top = header.getBoundingClientRect().height + 'px';
    }
    syncTop();
    desktop.addEventListener('change', syncTop);
    window.addEventListener('resize', syncTop);

    // Mobile off-canvas drawer.
    if (document.querySelector('.mecfs-sidebar-toggle')) return;
    const btn = document.createElement('button');
    btn.className = 'mecfs-sidebar-toggle';
    btn.setAttribute('type', 'button');
    btn.setAttribute('aria-label', 'Toggle navigation sidebar');
    btn.setAttribute('aria-expanded', 'false');
    btn.setAttribute('aria-controls', 'mecfs-sidebar');
    btn.innerHTML = '&#9776;'; // hamburger
    document.body.appendChild(btn);

    function setOpen(open) {
      sidebar.classList.toggle('open', open);
      btn.setAttribute('aria-expanded', open ? 'true' : 'false');
    }
    function close() { setOpen(false); }

    btn.addEventListener('click', (e) => {
      e.stopPropagation();
      setOpen(!sidebar.classList.contains('open'));
    });
    // Close the drawer after choosing a link (the navigation proceeds).
    sidebar.addEventListener('click', (e) => {
      if (e.target.closest('a')) close();
    });
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') close();
    });
    // Close when clicking outside the sidebar on small screens.
    document.addEventListener('click', (e) => {
      if (sidebar.classList.contains('open') && !sidebar.contains(e.target) && !btn.contains(e.target)) {
        close();
      }
    });
  }
})();

// glossary-tooltip.js — <glossary-tooltips> custom element
// Loads glossary.json, wraps matching terms in the DOM, renders hover/tap tooltips.
// Usage: <glossary-tooltips></glossary-tooltips> anywhere in <body>

(() => {
  const SCRIPT_EL = document.querySelector('script[src$="glossary-tooltip.js"]');
  const GLOSSARY_URL = SCRIPT_EL
    ? new URL('glossary.json', SCRIPT_EL.src).href
    : '/glossary.json';
  const CATEGORY_LABELS = {
    medication: 'Medication', supplement: 'Supplement', medication_class: 'Class',
    disease: 'Disease', symptom: 'Symptom', condition: 'Condition', hormone: 'Hormone',
    neurotransmitter: 'Neurotransmitter', cytokine: 'Cytokine', protein: 'Protein',
    enzyme: 'Enzyme', molecule: 'Molecule', metabolite: 'Metabolite', pathway: 'Pathway',
    receptor: 'Receptor', transporter: 'Transporter', transcription_factor: 'Transcription Factor',
    cell: 'Cell', immune: 'Immune', biomarker: 'Biomarker', measurement: 'Measurement',
    axis: 'Axis', system: 'System', barrier: 'Barrier', fluid: 'Fluid', test: 'Test',
    imaging: 'Imaging', pathogen: 'Pathogen', diagnostic: 'Diagnostic', method: 'Method',
    treatment: 'Treatment', organization: 'Organization', regulation: 'Regulation',
    administration: 'Administration', neurotrophin: 'Neurotrophin', cofactor: 'Cofactor',
    concept: 'Concept', mechanism: 'Mechanism', anatomy: 'Anatomy', vitamin: 'Vitamin'
  };
  const ESCAPE_RE = /[&<>"]/g;
  const ESCAPE_MAP = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' };
  const esc = (s) => (s && typeof s === 'string') ? s.replace(ESCAPE_RE, c => ESCAPE_MAP[c]) : '';
  const NOPLACE_RE = /\u0000gt\d+\u0000/g;

  function buildTooltip(key, entry, glossary) {
    let e = entry;
    while (e?.alias && glossary[e.alias]) {
      key = e.alias;
      e = glossary[key];
    }

    const div = document.createElement('div');
    div.className = 'gt-pop';

    const lines = [];
    lines.push(`<span class="gt-cat">${esc(CATEGORY_LABELS[e.category] ?? e.category)}</span>`);
    lines.push(`<span class="gt-term">${esc(e.label ?? key)}</span>`);
    lines.push(`<span class="gt-def">${esc(e.definition)}</span>`);

    if (e.generic) lines.push(`<span><b>Generic:</b> ${esc(e.generic)}</span>`);
    if (e.brand) lines.push(`<span><b>Brand:</b> ${esc(e.brand)}</span>`);
    if (e.class) lines.push(`<span><b>Class:</b> ${esc(e.class)}</span>`);
    if (e.rx) lines.push(`<span><b>Availability:</b> ${esc(e.rx)}</span>`);
    if (e.also) lines.push(`<span class="gt-also">${esc(e.also)}</span>`);

    if (e.sources?.length) {
      const links = e.sources.map(s =>
        `<a href="${esc(s.url)}" target="_blank" rel="noopener noreferrer">${esc(s.label)}</a>`
      );
      lines.push(`<span class="gt-sources">Info: ${links.join(' \u00b7 ')}</span>`);
    }

    div.innerHTML = lines.join('');
    return div;
  }

  function positionTooltip(tooltip, anchor) {
    const rect = anchor.getBoundingClientRect();
    const tipH = tooltip.offsetHeight;
    const tipW = tooltip.offsetWidth;
    const vw = window.innerWidth;
    const vh = window.innerHeight;
    const margin = 8;

    let top = rect.bottom + margin;
    let left = rect.left + rect.width / 2;

    if (top + tipH > vh - margin) top = rect.top - tipH - margin;
    if (top < margin) top = margin;
    if (left + tipW / 2 > vw - margin) left = vw - tipW - margin;
    if (left - tipW / 2 < margin) left = margin;

    tooltip.style.top = top + 'px';
    tooltip.style.left = left + 'px';
    tooltip.style.transform = 'translateX(-50%)';
    if (left === margin || left === vw - tipW - margin) tooltip.style.transform = 'none';
  }

  let _activePop = null;
  let _activeAnchor = null;
  let _hideTimer = null;

  function hideAll() {
    if (_hideTimer) { clearTimeout(_hideTimer); _hideTimer = null; }
    if (_activePop) {
      _activePop.classList.remove('gt-show');
      _hideTimer = setTimeout(() => {
        _activePop?.parentNode?.removeChild(_activePop);
        _activePop = null;
      }, 200);
    }
    if (_activeAnchor) {
      _activeAnchor.classList.remove('gt-active');
      _activeAnchor = null;
    }
  }

  function showTooltip(anchor, pop) {
    hideAll();
    document.body.appendChild(pop);
    positionTooltip(pop, anchor);
    pop.classList.add('gt-show');
    anchor.classList.add('gt-active');
    _activePop = pop;
    _activeAnchor = anchor;
  }

  function handleInteraction(ev, glossary) {
    const el = ev.target.closest('glossary-term');
    if (!el) return;
    const key = el.dataset.gtKey;
    if (!key) return;
    const entry = glossary[key];
    if (!entry) return;

    if (ev.type === 'mouseenter') {
      if ('ontouchstart' in window) return;
      const pop = buildTooltip(key, entry, glossary);
      showTooltip(el, pop);
    } else if (ev.type === 'mouseleave') {
      if ('ontouchstart' in window) return;
      hideAll();
    } else if (ev.type === 'click') {
      if (!('ontouchstart' in window)) return;
      ev.preventDefault();
      ev.stopPropagation();
      if (_activePop) {
        hideAll();
      } else {
        const pop = buildTooltip(key, entry, glossary);
        showTooltip(el, pop);
      }
    }
  }

  function buildGlossaryMeta(glossary) {
    // Strip _meta/_config keys
    const keys = Object.keys(glossary).filter(k => k[0] !== '_');
    keys.sort((a, b) => b.length - a.length); // longest first so alternation matches greedier branches first

    const keyPattern = keys.map(k => k.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')).join('|');
    const termRe = new RegExp(`(?<![a-zA-Z0-9/])(${keyPattern})(?![a-zA-Z0-9/])`, 'g');

    // Map each key to its glossary entry (fast O(1) lookup, same as glossary lookup)
    const noTooltipPhrases = [];
    for (const k of keys) {
      const nt = glossary[k]?.noTooltip;
      if (nt) noTooltipPhrases.push(...nt);
    }
    let noTooltipRe = null;
    if (noTooltipPhrases.length) {
      const ntPattern = noTooltipPhrases
        .map(p => p.replace(/[.*+?^${}()|[\]\\]/g, '\\$&').replace(/[\s\u00A0]+/g, '[\\s\\u00A0]+'))
        .join('|');
      noTooltipRe = new RegExp(ntPattern, 'g');
    }

    return { keys, termRe, noTooltipRe, noTooltipPhrases };
  }

  function markTerms(body, glossary, meta) {
    const { termRe, noTooltipRe } = meta;
    const walker = document.createTreeWalker(body, NodeFilter.SHOW_TEXT);
    let node;
    const excludeTags = new Set(['SCRIPT', 'STYLE', 'A', 'CODE', 'PRE', 'GLOSSARY-TERM', 'GLOSSARY-TOOLTIPS']);

    while ((node = walker.nextNode())) {
      const p = node.parentNode;
      const gn = p.nodeName;
      if (excludeTags.has(gn) || gn === 'TEXTAREA' || gn === 'INPUT') continue;
      if (p.closest('.gt-pop') || p.closest('.no-gt')) continue;

      let html = node.nodeValue;

      const phMap = new Map();
      if (noTooltipRe) {
        noTooltipRe.lastIndex = 0;
        html = html.replace(noTooltipRe, m => {
          const ph = `\u0000gt${phMap.size}\u0000`;
          phMap.set(ph, m);
          return ph;
        });
      }

      // Collect matched elements during single regex pass
      termRe.lastIndex = 0;
      const matchEls = [];
      html = html.replace(termRe, (match) => {
        matchEls.push(match);
        return `<glossary-term data-gt="${match}">${match}</glossary-term>`;
      });

      if (!matchEls.length) continue;

      if (phMap.size) html = html.replace(NOPLACE_RE, m => phMap.get(m) ?? m);

      // Replace text node with parsed HTML — use a marker to find inserted siblings
      const marker = document.createElement('i');
      marker.style.display = 'none';
      node.parentNode.insertBefore(marker, node);
      marker.insertAdjacentHTML('afterend', html);
      node.parentNode.removeChild(node);

      // Walk forward from marker to find all glossary-term elements inserted
      let cursor = marker.nextSibling;
      let elIdx = 0;
      while (cursor && elIdx < matchEls.length) {
        if (cursor.nodeType === Node.ELEMENT_NODE && cursor.matches('glossary-term')) {
          cursor.dataset.gtKey = matchEls[elIdx];
          const de = glossary[matchEls[elIdx]];
          if (!de) cursor.remove();
          elIdx++;
        }
        cursor = cursor.nextSibling;
      }
      marker.parentNode.removeChild(marker);
    }
  }

  class GlossaryTooltips extends HTMLElement {
    #loaded = false;
    #glossary = null;
    #handler = null;
    #docClick = null;
    #scrollHandler = null;

    connectedCallback() {
      if (this.#loaded) return;
      this.#loaded = true;

      fetch(GLOSSARY_URL)
        .then(r => r.json())
        .then(glossary => {
          this.#glossary = glossary;
          const meta = buildGlossaryMeta(glossary);
          markTerms(document.body, glossary, meta);

          const handler = (e) => handleInteraction(e, this.#glossary);
          this.addEventListener('mouseenter', handler, true);
          this.addEventListener('mouseleave', handler, true);
          this.addEventListener('click', handler);
          this.#handler = handler;

          this.#docClick = (e) => {
            if (!e.target.closest('glossary-term') && !e.target.closest('.gt-pop')) hideAll();
          };
          document.addEventListener('click', this.#docClick);
          this.#scrollHandler = () => hideAll();
          window.addEventListener('scroll', this.#scrollHandler);
        })
        .catch(() => console.warn('Glossary tooltips: could not fetch glossary.json'));
    }

    disconnectedCallback() {
      if (this.#handler) {
        this.removeEventListener('mouseenter', this.#handler, true);
        this.removeEventListener('mouseleave', this.#handler, true);
        this.removeEventListener('click', this.#handler);
        this.#handler = null;
      }
      if (this.#docClick) {
        document.removeEventListener('click', this.#docClick);
        this.#docClick = null;
      }
      if (this.#scrollHandler) {
        window.removeEventListener('scroll', this.#scrollHandler);
        this.#scrollHandler = null;
      }
    }
  }

  customElements.define('glossary-tooltips', GlossaryTooltips);
})();

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

  function hideAll() {
    const pops = document.querySelectorAll('.gt-pop');
    pops.forEach(p => {
      p.classList.remove('gt-show');
      setTimeout(() => p.parentNode?.removeChild(p), 200);
    });
    document.querySelectorAll('.gt-active').forEach(el => el.classList.remove('gt-active'));
  }

  function showTooltip(anchor, pop) {
    hideAll();
    document.body.appendChild(pop);
    positionTooltip(pop, anchor);
    pop.classList.add('gt-show');
    anchor.classList.add('gt-active');
  }

  function attachEvents(el, key, entry, glossary) {
    let open = false;

    el.addEventListener('mouseenter', () => {
      if ('ontouchstart' in window) return;
      const pop = buildTooltip(key, entry, glossary);
      showTooltip(el, pop);
      open = true;
    });

    el.addEventListener('mouseleave', () => {
      if ('ontouchstart' in window) return;
      hideAll();
      open = false;
    });

    el.addEventListener('click', ev => {
      if (!('ontouchstart' in window)) return;
      ev.preventDefault();
      ev.stopPropagation();
      if (open) {
        hideAll();
        open = false;
      } else {
        const pop = buildTooltip(key, entry, glossary);
        showTooltip(el, pop);
        open = true;
      }
    });
  }

  function markTerms(body, glossary) {
    const keys = Object.keys(glossary)
      .filter(k => k[0] !== '_')
      .sort((a, b) => b.length - a.length);

    const walker = document.createTreeWalker(body, NodeFilter.SHOW_TEXT);
    const textNodes = [];
    let node;
    while ((node = walker.nextNode())) {
      const p = node.parentNode;
      if (p.tagName === 'SCRIPT' || p.tagName === 'STYLE' || p.tagName === 'A' ||
          p.tagName === 'CODE' || p.tagName === 'PRE' ||
          p.closest('.gt-pop') || p.closest('.gt') || p.closest('.no-gt') ||
          p.closest('GLOSSARY-TOOLTIPS')) {
        continue;
      }
      textNodes.push(node);
    }

    const hasNoTooltip = keys.some(k => glossary[k]?.noTooltip);

    for (const tn of textNodes) {
      let html = tn.textContent;
      let modified = false;

      // Placeholder-protect noTooltip phrases
      const placeholderVals = {};
      let phIdx = 0;
      if (hasNoTooltip) {
        for (const k of keys) {
          const pentry = glossary[k];
          if (!pentry?.noTooltip) continue;
          for (const phrase of pentry.noTooltip) {
            const ph = `\u0000gtph${phIdx++}\u0000`;
            const reP = new RegExp(
              phrase.replace(/[.*+?^${}()|[\]\\]/g, '\\$&').replace(/[\s\u00A0]+/g, '[\\s\\u00A0]+'),
              'g');
            const match = html.match(reP);
            placeholderVals[ph] = match ? match[0] : phrase;
            html = html.replace(reP, ph);
          }
        }
      }

      for (const key of keys) {
        const entry = glossary[key];
        if (!entry) continue;
        const escaped = key.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
        const re = new RegExp(`(?<![a-zA-Z0-9/])(${escaped})(?![a-zA-Z0-9/])`, 'g');
        if (re.test(html)) {
          modified = true;
          re.lastIndex = 0;
          html = html.replace(re, `<span class="gt" data-gt="${esc(key)}">$1</span>`);
        }
      }

      if (hasNoTooltip) {
        for (const [ph, val] of Object.entries(placeholderVals)) html = html.split(ph).join(val);
      }

      if (modified) {
        const frag = document.createElement('span');
        frag.innerHTML = html;
        tn.parentNode.replaceChild(frag, tn);

        for (const span of frag.querySelectorAll('.gt')) {
          const dk = span.getAttribute('data-gt');
          const de = glossary[dk];
          if (de) attachEvents(span, dk, de, glossary);
        }
      }
    }
  }

  class GlossaryTooltips extends HTMLElement {
    #loaded = false;

    connectedCallback() {
      if (this.#loaded) return;
      this.#loaded = true;

      fetch(GLOSSARY_URL)
        .then(r => r.json())
        .then(glossary => {
          markTerms(document.body, glossary);

          document.addEventListener('click', e => {
            if (!e.target.closest('.gt') && !e.target.closest('.gt-pop')) hideAll();
          });
          window.addEventListener('scroll', hideAll);
        })
        .catch(() => console.warn('Glossary tooltips: could not fetch glossary.json'));
    }
  }

  customElements.define('glossary-tooltips', GlossaryTooltips);
})();

// glossary-tooltip.js — <glossary-tooltips> custom element
// Loads glossary JSON, wraps matching terms in the DOM, renders hover/tap tooltips.
// Usage: <glossary-tooltips></glossary-tooltips> anywhere in <body>

(() => {
  const GLOSSARY_FILES = {
    en: 'glossary-en.json',
    fr: 'glossary-fr.json',
    de: 'glossary-de.json'
  };

  function pageLang() {
    const htmlLang = document.documentElement?.lang && document.documentElement.lang.slice(0, 2).toLowerCase();
    return GLOSSARY_FILES[htmlLang] ? htmlLang : 'en';
  }

  const SCRIPT_EL = document.querySelector('script[src$="glossary-tooltip.js"]');
  const BASE_URL = SCRIPT_EL ? SCRIPT_EL.src : '/';
  const LANG = pageLang();
  let GLOSSARY_URL;
  try {
    GLOSSARY_URL = new URL(GLOSSARY_FILES[LANG], BASE_URL).href;
  } catch {
    // BASE_URL may be a bare path (e.g. '/' when no script element is present);
    // fall back to the relative filename.
    GLOSSARY_URL = GLOSSARY_FILES[LANG];
  }
  const CATEGORY_LABEL_SETS = {
    en: {
      medication: 'Medication', supplement: 'Supplement', medication_class: 'Class',
      diagnostic_criteria: 'Diagnostic Criteria', organisation: 'Organization', registry: 'Registry',
      research: 'Research', anatomical: 'Anatomy', compound: 'Compound', device: 'Device',
      abbreviation: 'Abbreviation', gene: 'Gene',
      disease: 'Disease', symptom: 'Symptom', condition: 'Condition', hormone: 'Hormone',
      neurotransmitter: 'Neurotransmitter', cytokine: 'Cytokine', protein: 'Protein',
      enzyme: 'Enzyme', molecule: 'Molecule', metabolite: 'Metabolite', pathway: 'Pathway',
      receptor: 'Receptor', transporter: 'Transporter', transcription_factor: 'Transcription Factor',
      cell: 'Cell', immune: 'Immune', biomarker: 'Biomarker', measurement: 'Measurement',
      axis: 'Axis', system: 'System', barrier: 'Barrier', fluid: 'Fluid', test: 'Test',
      imaging: 'Imaging', pathogen: 'Pathogen', diagnostic: 'Diagnostic', method: 'Method',
      treatment: 'Treatment', organization: 'Organization', regulation: 'Regulation',
      administration: 'Administration', neurotrophin: 'Neurotrophin', cofactor: 'Cofactor',
      concept: 'Concept', mechanism: 'Mechanism', anatomy: 'Anatomy', vitamin: 'Vitamin',
      hypothesis: 'Hypothesis', physiology: 'Physiology', study: 'Study',
      neuropeptide: 'Neuropeptide', database: 'Database',
      'cell-biology': 'Cell Biology', 'immunology': 'Immunology'
    },
    fr: {
      medication: 'Médicament', supplement: 'Complément', medication_class: 'Classe',
      diagnostic_criteria: 'Critères diagnostiques', organisation: 'Organisation', registry: 'Registre',
      research: 'Recherche', anatomical: 'Anatomie', compound: 'Composé', device: 'Dispositif',
      abbreviation: 'Abréviation', gene: 'Gène',
      disease: 'Maladie', symptom: 'Symptôme', condition: 'Affection', hormone: 'Hormone',
      neurotransmitter: 'Neurotransmetteur', cytokine: 'Cytokine', protein: 'Protéine',
      enzyme: 'Enzyme', molecule: 'Molécule', metabolite: 'Métabolite', pathway: 'Voie',
      receptor: 'Récepteur', transporter: 'Transporteur', transcription_factor: 'Facteur de transcription',
      cell: 'Cellule', immune: 'Système immunitaire', biomarker: 'Biomarqueur', measurement: 'Mesure',
      axis: 'Axe', system: 'Système', barrier: 'Barrière', fluid: 'Liquide', test: 'Test',
      imaging: 'Imagerie', pathogen: 'Agent pathogène', diagnostic: 'Diagnostic', method: 'Méthode',
      treatment: 'Traitement', organization: 'Organisation', regulation: 'Régulation',
      administration: 'Administration', neurotrophin: 'Neurotrophine', cofactor: 'Cofacteur',
      concept: 'Concept', mechanism: 'Mécanisme', anatomy: 'Anatomie', vitamin: 'Vitamine',
      hypothesis: 'Hypothèse', physiology: 'Physiologie', study: 'Étude',
      neuropeptide: 'Neuropeptide', database: 'Base de données',
      'cell-biology': 'Biologie cellulaire', 'immunology': 'Immunologie'
    },
    de: {
      medication: 'Medikament', supplement: 'Nahrungsergänzung', medication_class: 'Klasse',
      diagnostic_criteria: 'Diagnosekriterien', organisation: 'Organisation', registry: 'Register',
      research: 'Forschung', anatomical: 'Anatomie', compound: 'Verbindung', device: 'Gerät',
      abbreviation: 'Abkürzung', gene: 'Gen',
      disease: 'Krankheit', symptom: 'Symptom', condition: 'Erkrankung', hormone: 'Hormon',
      neurotransmitter: 'Neurotransmitter', cytokine: 'Zytokin', protein: 'Protein',
      enzyme: 'Enzym', molecule: 'Molekül', metabolite: 'Metabolit', pathway: 'Signalweg',
      receptor: 'Rezeptor', transporter: 'Transporter', transcription_factor: 'Transkriptionsfaktor',
      cell: 'Zelle', immune: 'Immun', biomarker: 'Biomarker', measurement: 'Messung',
      axis: 'Achse', system: 'System', barrier: 'Barriere', fluid: 'Flüssigkeit', test: 'Test',
      imaging: 'Bildgebung', pathogen: 'Erreger', diagnostic: 'Diagnostik', method: 'Methode',
      treatment: 'Behandlung', organization: 'Organisation', regulation: 'Regulation',
      administration: 'Verabreichung', neurotrophin: 'Neurotrophin', cofactor: 'Kofaktor',
      concept: 'Konzept', mechanism: 'Mechanismus', anatomy: 'Anatomie', vitamin: 'Vitamin',
      hypothesis: 'Hypothese', physiology: 'Physiologie', study: 'Studie',
      neuropeptide: 'Neuropeptid', database: 'Datenbank',
      'cell-biology': 'Zellbiologie', 'immunology': 'Immunologie'
    }
  };
  const CATEGORY_LABELS = CATEGORY_LABEL_SETS[LANG] || CATEGORY_LABEL_SETS.en;

  // doseZones[].category is a machine color key kept in English; display it localized
  const DOSE_CAT_LABELS = {
    en: { Restorative: 'Restorative', Corrective: 'Corrective', 'Threshold-modulatory': 'Threshold-modulatory',
      'Substrate-repletion': 'Substrate-repletion', Symptomatic: 'Symptomatic', Mixed: 'Mixed' },
    fr: { Restorative: 'Restaurateur', Corrective: 'Correcteur', 'Threshold-modulatory': 'Modulateur de seuil',
      'Substrate-repletion': 'Réplétion de substrat', Symptomatic: 'Symptomatique', Mixed: 'Mixte' },
    de: { Restorative: 'Restaurativ', Corrective: 'Korrektiv', 'Threshold-modulatory': 'Schwellenmodulierend',
      'Substrate-repletion': 'Substratauffüllung', Symptomatic: 'Symptomatisch', Mixed: 'Gemischt' }
  };
  const DOSE_CAT_LABEL = DOSE_CAT_LABELS[LANG] || DOSE_CAT_LABELS.en;

  const ESCAPE_RE = /[&<>"]/g;
  const ESCAPE_MAP = { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' };
  const esc = (s) => (s && typeof s === 'string') ? s.replace(ESCAPE_RE, c => ESCAPE_MAP[c]) : '';
  // Only allow http(s) and protocol-relative links; reject javascript:, data:, etc.
  const safeUrl = (s) => {
    if (typeof s !== 'string' || !s) return '';
    return /^https?:\/\//i.test(s) || /^\/\//i.test(s) ? s : '';
  };
  const NOPLACE_RE = /\u0000gt\d+\u0000/g;

  function buildTooltip(key, entry, glossary) {
    let e = entry;
    const seenAliases = new Set();
    while (e?.alias && glossary[e.alias] && !seenAliases.has(e.alias)) {
      seenAliases.add(e.alias);
      key = e.alias;
      e = glossary[key];
    }

    const div = document.createElement('div');
    div.className = 'gt-pop';

    const lines = [];
    lines.push(`<span class="gt-cat">${esc(CATEGORY_LABELS[e.category] ?? e.category)}</span>`);
    lines.push(`<span class="gt-term">${esc(e.label ?? key)}</span>`);
    lines.push(`<span class="gt-def">${esc(e.definition)}</span>`);

    if (e.doseZones?.length) {
      const colors = { 'Restorative': '#059669', 'Corrective': '#2563eb', 'Threshold-modulatory': '#d97706',
        'Substrate-repletion': '#7c3aed', 'Symptomatic': '#dc2626', 'Mixed': '#0891b2' };
      const rows = e.doseZones.map(z => {
        const c = colors[z.category] || '#6b7280';
        const doseClass = z.dose === 'Therapeutic range' ? 'gt-dz-single' : 'gt-dz-detail';
        const se = z.sideEffects ? `<br><span class="gt-dz-se">${esc(z.sideEffects)}</span>` : '';
        return `<tr><td class="gt-dz-dose">${esc(z.dose)}</td><td class="gt-dz-cat"><b style="color:${c}">${esc(DOSE_CAT_LABEL[z.category] ?? z.category)}</b></td><td class="gt-dz-mech">${esc(z.mechanism)}${se}</td></tr>`;
      });
      const header = e.doseZones.length > 1 ? `<tr><th>Dose</th><th>Effect</th><th>Mechanism</th></tr>` : '';
      lines.push(`<table class="gt-dz-table">${header}${rows.join('')}</table>`);
    }
    if (e.generic) lines.push(`<span><b>Generic:</b> ${esc(e.generic)}</span>`);
    if (e.brand) lines.push(`<span><b>Brand:</b> ${esc(e.brand)}</span>`);
    if (e.class) lines.push(`<span class="gt-class"><b>Class:</b> ${esc(e.class)}</span>`);
    if (e.rx) lines.push(`<span><b>Availability:</b> ${esc(e.rx)}</span>`);
    if (e.also) lines.push(`<span class="gt-also">${esc(e.also)}</span>`);

    if (e.sources?.length) {
      const safeSources = e.sources.filter(s => s && typeof s === 'object');
      const links = safeSources.map(s => {
        const url = safeUrl(s.url);
        const label = esc(s.label);
        return url
          ? `<a href="${esc(url)}" target="_blank" rel="noopener noreferrer">${label}</a>`
          : `<span>${label}</span>`;
      });
      lines.push(`<span class="gt-sources">Info: ${links.join(' \u00b7 ')}</span>`);
    }

    div.innerHTML = lines.join('');
    return div;
  }

  function positionTooltip(tooltip, anchor) {
    const rect = anchor.getBoundingClientRect();
    const tipH = tooltip.offsetHeight;
    let tipW = tooltip.offsetWidth;
    const vw = window.innerWidth;
    const vh = window.innerHeight;
    const margin = 8;
    const maxW = vw - 2 * margin;

    // Clamp width so a wide tooltip (e.g. a doseZone table) never hangs off-screen.
    if (tipW > maxW) {
      tipW = maxW;
      tooltip.style.maxWidth = maxW + 'px';
    }

    let top = rect.bottom + margin;
    let left = rect.left + rect.width / 2;

    if (top + tipH > vh - margin) top = rect.top - tipH - margin;
    if (top < margin) top = margin;
    // Center on the anchor, then clamp so the tooltip stays within the viewport.
    left = Math.min(Math.max(left, margin + tipW / 2), vw - margin - tipW / 2);

    tooltip.style.top = top + 'px';
    tooltip.style.left = left + 'px';
    tooltip.style.transform = 'translateX(-50%)';
  }

  let _activePop = null;
  let _activeAnchor = null;
  let _hideTimer = null;
  // Pops currently fading out. Each got its OWN removal timer, so a later hideAll
  // (e.g. rapid hover across several terms) never cancels an already-scheduled
  // removal — otherwise an earlier pop could be orphaned in the DOM forever.
  const _fading = new Set();

  function _scheduleFade(pop) {
    if (_fading.has(pop)) return;
    _fading.add(pop);
    setTimeout(() => {
      if (pop && pop.parentNode) pop.parentNode.removeChild(pop);
      _fading.delete(pop);
    }, 200);
  }

  function hideAll() {
    if (_hideTimer) { clearTimeout(_hideTimer); _hideTimer = null; }
    if (_activePop) {
      _activePop.classList.remove('gt-show');
      _scheduleFade(_activePop);
      _activePop = null;
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
      if (_hideTimer) { clearTimeout(_hideTimer); _hideTimer = null; }
      const pop = buildTooltip(key, entry, glossary);
      showTooltip(el, pop);
    } else if (ev.type === 'mouseleave') {
      if ('ontouchstart' in window) return;
      _hideTimer = setTimeout(hideAll, 300);
    } else if (ev.type === 'click') {
      if (!('ontouchstart' in window)) return;
      ev.preventDefault();
      ev.stopPropagation();
      if (_activePop && _activeAnchor === el) {
        // Tapping the already-open term toggles it closed.
        hideAll();
      } else {
        // Opening a (possibly different) term in one tap; showTooltip closes any open pop.
        const pop = buildTooltip(key, entry, glossary);
        showTooltip(el, pop);
      }
    }
  }

  function handlePopInteraction(ev) {
    if ('ontouchstart' in window) return;

    if (ev.type === 'mouseover') {
      if (ev.target.closest('.gt-pop')) {
        if (_hideTimer) { clearTimeout(_hideTimer); _hideTimer = null; }
      }
    } else if (ev.type === 'mouseout') {
      const pop = _activePop;
      if (!pop) return;
      if (!pop.contains(ev.relatedTarget)) {
        _hideTimer = setTimeout(hideAll, 100);
      }
    }
  }

  const RE_SPECIAL = /[.*+?^${}()|[\]\\]/g;
  const escReg = (s) => (typeof s === 'string' ? s.replace(RE_SPECIAL, '\\$&') : '');

  // Build term-matching regexes over canonical keys + per-entry synonyms.
  //
  // Two regexes, not one, because they need different case-sensitivity and one
  // regex cannot apply per-branch case flags in the target engines:
  //   - `keyRe`: canonical keys, case-sensitive. Prevents 2-3 letter abbreviation
  //     keys (OR, NO, IL, NE, ALS, DA, PE, ...) from false-positive on everyday
  //     English/French/German prose words ("or", "no", "il", "als", "da").
  //   - `synRe`: localized multi-word synonyms, case-insensitive, so title-case
  //     synonyms ("Malaise post-effort") match lowercase prose.
  //
  // `resolve` is the single source of truth {lowercaseText -> canonical key} used
  // by markTerms to open the correct tooltip. Collisions are resolved
  // deterministically (real entry with a definition wins over an alias stub;
  // canonical keys win over synonyms; otherwise first-registered wins) and logged.
  function buildGlossaryMeta(glossary) {
    const keys = Object.keys(glossary).filter(k => k[0] !== '_');

    const resolve = new Map();
    const extraSeparators = ['/'];
    const sepPattern = extraSeparators.map(escReg).join('');
    const boundary = `[a-zA-Z0-9\\p{L}${sepPattern}]`;
    const register = (text, key, ci, allowOverwrite) => {
      const low = text.toLowerCase();
      const existing = resolve.get(low);
      if (existing !== undefined && existing !== key) {
        if (!allowOverwrite) {
          console.warn(`glossary-tooltip: match text "${text}" collides (${existing} vs ${key}); keeping ${existing}`);
          return null;
        }
      }
      resolve.set(low, key);
      return escReg(text);
    };

    const keyBranches = [];
    const synBranches = [];

    // Canonical keys: case-sensitive; a real entry (has a definition) beats an
    // alias stub when two keys differ only by case (e.g. D-Ribose/D-ribose).
    for (const k of keys) {
      const low = k.toLowerCase();
      const existing = resolve.get(low);
      if (existing !== undefined && existing !== k) {
        const kReal = !!glossary[k]?.definition;
        const exReal = !!glossary[existing]?.definition;
        if (!(kReal && !exReal)) continue; // keep existing (real wins, or first stays)
        // k is the real entry displacing a stub
      }
      if (resolve.get(low) === k) continue; // already the owner
      resolve.set(low, k);
      keyBranches.push(escReg(k));
    }

    // Synonyms: case-insensitive; never overwrite a canonical key.
    for (const k of keys) {
      const syns = glossary[k]?.synonyms;
      if (!Array.isArray(syns)) continue;
      for (const s of syns) {
        if (typeof s !== 'string' || !s) continue;
        if (resolve.has(s.toLowerCase())) continue; // canonical key owns it
        const payload = register(s, k, true, false);
        if (payload) synBranches.push(payload);
      }
    }

    // Longest first so the alternation matches the greedier branch first.
    keyBranches.sort((a, b) => b.length - a.length);
    synBranches.sort((a, b) => b.length - a.length);

    const keyRe = keyBranches.length
      ? new RegExp(`(?<!${boundary})(${keyBranches.join('|')})(?!${boundary})`, 'gu')
      : null;
    const synRe = synBranches.length
      ? new RegExp(`(?<!${boundary})(${synBranches.join('|')})(?!${boundary})`, 'giu')
      : null;

    const noTooltipPhrases = [];
    for (const k of keys) {
      const nt = glossary[k]?.noTooltip;
      if (nt) noTooltipPhrases.push(...nt);
    }
    let noTooltipRe = null;
    if (noTooltipPhrases.length) {
      const ntPattern = noTooltipPhrases
        .map(escReg).map(p => p.replace(/[\s\u00A0]+/g, '[\\s\\u00A0]+'))
        .join('|');
      noTooltipRe = new RegExp(ntPattern, 'gi');
    }

    return { keys, keyRe, synRe, noTooltipRe, resolve };
  }

  function markTerms(body, glossary, meta) {
    const { keyRe, synRe, noTooltipRe, resolve } = meta;

    // Collect text nodes first — mutating DOM during TreeWalker corrupts iteration
    const textNodes = [];
    const walker = document.createTreeWalker(body, NodeFilter.SHOW_TEXT);
    let node;
    const excludeTags = new Set(['SCRIPT', 'STYLE', 'CODE', 'PRE', 'GLOSSARY-TERM', 'GLOSSARY-TOOLTIPS']);
    while ((node = walker.nextNode())) {
      const p = node.parentNode;
      const gn = p.nodeName;
      if (excludeTags.has(gn) || gn === 'TEXTAREA' || gn === 'INPUT') continue;
      if (p.closest('.gt-pop') || p.closest('.no-gt')) continue;
      textNodes.push(node);
    }

    for (const tn of textNodes) {
      let html = tn.textContent;
      const phMap = new Map(); // noTooltip placeholders

      if (noTooltipRe) {
        noTooltipRe.lastIndex = 0;
        html = html.replace(noTooltipRe, m => {
          const ph = `\u0000gt${phMap.size}\u0000`;
          phMap.set(ph, m);
          return ph;
        });
      }

      // Synonyms first (case-insensitive, localized full names). A matched phrase
      // maps to its canonical key for the correct tooltip.
      if (synRe) {
        synRe.lastIndex = 0;
        html = html.replace(synRe, (match) => {
          const dk = resolve.get(match.toLowerCase());
          if (!dk) return match;
          const ph = `\u0000gt${phMap.size}\u0000`;
          phMap.set(ph, `<glossary-term data-gt="${esc(dk)}" data-gt-match="${esc(match)}">${esc(match)}</glossary-term>`);
          return ph;
        });
      }

      // Canonical keys (case-sensitive) on the placeholder-protected text so key
      // matching never runs inside a wrapped synonym.
      if (keyRe) {
        keyRe.lastIndex = 0;
        if (keyRe.test(html)) {
          keyRe.lastIndex = 0;
          html = html.replace(keyRe, (match) => {
            const dk = resolve.get(match.toLowerCase());
            if (!dk) return match;
            return `<glossary-term data-gt="${esc(dk)}" data-gt-match="${esc(match)}">${esc(match)}</glossary-term>`;
          });
        }
      }

      if (phMap.size) html = html.replace(NOPLACE_RE, m => phMap.get(m) ?? m);

      const wrapper = document.createElement('span');
      wrapper.innerHTML = html;

      for (const el of wrapper.querySelectorAll('glossary-term')) {
        const dk = el.getAttribute('data-gt');
        if (!glossary[dk]) { el.remove(); continue; }
        el.dataset.gtKey = el.getAttribute('data-gt');
      }

      tn.parentNode.replaceChild(wrapper, tn);
    }
  }

  // A page may contain several <glossary-tooltips>. Document-level listeners and the
  // tooltip state are module-scoped and registered exactly once, reference-counted by
  // the number of CONNECTED instances. `_instanceCount` tracks live instances on every
  // connect/disconnect (not just the first), so teardown only happens on the last
  // disconnect and a late-resolving fetch never registers listeners with zero live
  // instances (which would otherwise leak handlers with no teardown path).
  let _instanceCount = 0;
  let _documentTeardown = null;
  let _glossary = null;   // resolved glossary shared by all instances (one URL)
  let _loading = false;

  function attachDocumentListeners() {
    if (_documentTeardown || !_glossary || _instanceCount === 0) return;

    const glossary = _glossary;
    const handler = (e) => handleInteraction(e, glossary);
    document.addEventListener('mouseenter', handler, true);
    document.addEventListener('mouseleave', handler, true);
    document.addEventListener('click', handler);

    document.addEventListener('mouseover', handlePopInteraction, true);
    document.addEventListener('mouseout', handlePopInteraction, true);

    const docClick = (e) => {
      if (!e.target.closest('glossary-term') && !e.target.closest('.gt-pop')) hideAll();
    };
    document.addEventListener('click', docClick);
    const scrollHandler = () => hideAll();
    window.addEventListener('scroll', scrollHandler);

    _documentTeardown = () => {
      document.removeEventListener('mouseenter', handler, true);
      document.removeEventListener('mouseleave', handler, true);
      document.removeEventListener('click', handler);
      document.removeEventListener('mouseover', handlePopInteraction, true);
      document.removeEventListener('mouseout', handlePopInteraction, true);
      document.removeEventListener('click', docClick);
      window.removeEventListener('scroll', scrollHandler);
    };
  }

  function detachDocumentListeners() {
    if (_instanceCount > 0 || !_documentTeardown) return;
    _documentTeardown();
    _documentTeardown = null;
  }

  class GlossaryTooltips extends HTMLElement {
    #loaded = false;
    #glossary = null;

    connectedCallback() {
      _instanceCount += 1;
      attachDocumentListeners();
      if (this.#loaded) return;
      this.#loaded = true;
      if (_glossary) { this.#glossary = _glossary; markTerms(document.body, _glossary, buildGlossaryMeta(_glossary)); return; }
      if (_loading) return; // another instance is already fetching

      _loading = true;
      fetch(GLOSSARY_URL)
        .then(r => r.json())
        .then(glossary => {
          _loading = false;
          _glossary = glossary;
          this.#glossary = glossary;
          markTerms(document.body, glossary, buildGlossaryMeta(glossary));
          attachDocumentListeners();
        })
        .catch(() => { _loading = false; console.warn('Glossary tooltips: could not fetch glossary JSON'); });
    }

    disconnectedCallback() {
      _instanceCount = Math.max(0, _instanceCount - 1);
      detachDocumentListeners();
    }
  }

  customElements.define('glossary-tooltips', GlossaryTooltips);
})();

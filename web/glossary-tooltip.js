// glossary-tooltip.js — hover/tap tooltips for glossary terms
// Loads glossary.json, wraps matching terms in <span class="gt"> with data-gt="key"

(function () {
  var script = document.querySelector('script[src$="glossary-tooltip.js"]');
  var GLOSSARY_URL = script ? new URL('glossary.json', script.src).href : 'glossary.json';

  function loadGlossary() {
    return fetch(GLOSSARY_URL)
      .then(function (r) { return r.json(); })
      .catch(function () {
        console.warn('Glossary tooltips: could not load glossary.json');
        return {};
      });
  }

  function buildTooltip(key, entry) {
    var div = document.createElement('div');
    div.className = 'gt-pop';

    var cats = { medication: 'Medication', supplement: 'Supplement', medication_class: 'Class', disease: 'Disease', symptom: 'Symptom', condition: 'Condition', hormone: 'Hormone', neurotransmitter: 'Neurotransmitter', cytokine: 'Cytokine', protein: 'Protein', enzyme: 'Enzyme', molecule: 'Molecule', metabolite: 'Metabolite', pathway: 'Pathway', receptor: 'Receptor', transporter: 'Transporter', transcription_factor: 'Transcription Factor', cell: 'Cell', immune: 'Immune', biomarker: 'Biomarker', measurement: 'Measurement', axis: 'Axis', system: 'System', barrier: 'Barrier', fluid: 'Fluid', test: 'Test', imaging: 'Imaging', pathogen: 'Pathogen', diagnostic: 'Diagnostic', method: 'Method', treatment: 'Treatment', organization: 'Organization', regulation: 'Regulation', administration: 'Administration', neurotrophin: 'Neurotrophin', cofactor: 'Cofactor', concept: 'Concept', mechanism: 'Mechanism', anatomy: 'Anatomy', vitamin: 'Vitamin' };
    var cat = cats[entry.category] || entry.category;

    var lines = [];
    lines.push('<span class="gt-cat">' + cat + '</span>');
    lines.push('<span class="gt-term">' + (entry.label || key) + '</span>');
    lines.push('<span class="gt-def">' + entry.definition + '</span>');

    if (entry.generic) {
      lines.push('<span><b>Generic:</b> ' + entry.generic + '</span>');
    }
    if (entry.brand) {
      lines.push('<span><b>Brand:</b> ' + entry.brand + '</span>');
    }
    if (entry['class']) {
      lines.push('<span><b>Class:</b> ' + entry['class'] + '</span>');
    }
    if (entry.rx) {
      lines.push('<span><b>Availability:</b> ' + entry.rx + '</span>');
    }
    if (entry.also) {
      lines.push('<span class="gt-also">' + entry.also + '</span>');
    }

    div.innerHTML = lines.join('');
    return div;
  }

  function positionTooltip(tooltip, anchor) {
    var rect = anchor.getBoundingClientRect();
    var tipH = tooltip.offsetHeight;
    var tipW = tooltip.offsetWidth;
    var vw = window.innerWidth;
    var vh = window.innerHeight;
    var margin = 8;

    var top = rect.bottom + margin;
    var left = rect.left + rect.width / 2;

    if (top + tipH > vh - margin) {
      top = rect.top - tipH - margin;
    }
    if (top < margin) {
      top = margin;
    }
    if (left + tipW / 2 > vw - margin) {
      left = vw - tipW - margin;
    }
    if (left - tipW / 2 < margin) {
      left = margin;
    }

    tooltip.style.top = top + 'px';
    tooltip.style.left = left + 'px';
    tooltip.style.transform = 'translateX(-50%)';

    if (left === margin) {
      tooltip.style.transform = 'none';
    }
    if (left === vw - tipW - margin) {
      tooltip.style.transform = 'none';
    }
  }

  function show(anchor, pop) {
    hideAll();
    document.body.appendChild(pop);
    positionTooltip(pop, anchor);
    pop.classList.add('gt-show');
    anchor.classList.add('gt-active');
  }

  function hideAll() {
    var pops = document.querySelectorAll('.gt-pop');
    for (var i = 0; i < pops.length; i++) {
      pops[i].classList.remove('gt-show');
      setTimeout(function (p) { if (p.parentNode) p.parentNode.removeChild(p); }, 200, pops[i]);
    }
    var active = document.querySelectorAll('.gt-active');
    for (var j = 0; j < active.length; j++) {
      active[j].classList.remove('gt-active');
    }
  }

  function attachEvents(el, key, entry) {
    var open = false;

    el.addEventListener('mouseenter', function () {
      if ('ontouchstart' in window) return;
      var pop = buildTooltip(key, entry);
      show(el, pop);
      open = true;
    });

    el.addEventListener('mouseleave', function () {
      if ('ontouchstart' in window) return;
      hideAll();
      open = false;
    });

    el.addEventListener('click', function (e) {
      if (!('ontouchstart' in window)) return;
      e.preventDefault();
      e.stopPropagation();
      if (open) {
        hideAll();
        open = false;
      } else {
        var pop = buildTooltip(key, entry);
        show(el, pop);
        open = true;
      }
    });
  }

  function markTerms(body, glossary) {
    var keys = Object.keys(glossary).sort(function (a, b) { return b.length - a.length; });
    var walker = document.createTreeWalker(body, NodeFilter.SHOW_TEXT, null);

    var textNodes = [];
    var node;
    while ((node = walker.nextNode())) {
      var p = node.parentNode;
      if (p.tagName === 'SCRIPT' || p.tagName === 'STYLE' || p.tagName === 'A' || p.tagName === 'CODE' || p.tagName === 'PRE' || p.closest('.gt-pop') || p.closest('.gt')) {
        continue;
      }
      textNodes.push(node);
    }

    for (var i = 0; i < textNodes.length; i++) {
      var tn = textNodes[i];
      var html = tn.textContent;
      var modified = false;

      for (var k = 0; k < keys.length; k++) {
        var key = keys[k];
        var entry = glossary[key];
        if (!entry) continue;
        var escaped = key.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
        var re = new RegExp('(?<![a-zA-Z0-9/])(' + escaped + ')(?![a-zA-Z0-9/])', 'g');

        if (re.test(html)) {
          modified = true;
          re.lastIndex = 0;
          html = html.replace(re, '<span class="gt" data-gt="' + key.replace(/"/g, '&quot;') + '">$1<sup class="gt-icon">?</sup></span>');
        }
      }

      if (modified) {
        var frag = document.createElement('span');
        frag.innerHTML = html;
        tn.parentNode.replaceChild(frag, tn);

        var spans = frag.querySelectorAll('.gt');
        for (var s = 0; s < spans.length; s++) {
          var span = spans[s];
          var k = span.getAttribute('data-gt');
          var e = glossary[k];
          if (e) {
            attachEvents(span, k, e);
          }
        }
      }
    }
  }

  function init() {
    loadGlossary().then(function (glossary) {
      var keys = Object.keys(glossary);
      if (keys.length === 0) return;

      markTerms(document.body, glossary);

      document.addEventListener('click', function (e) {
        if (!e.target.closest('.gt') && !e.target.closest('.gt-pop')) {
          hideAll();
        }
      });

      window.addEventListener('scroll', hideAll);
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();

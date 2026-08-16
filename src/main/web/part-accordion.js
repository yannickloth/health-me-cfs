// part-accordion.js — <part-accordion> custom element
// Renders a Bootstrap accordion (one item per part) containing a Bootstrap
// carousel (one slide per chapter) with per-chapter about-text, from
// part-chapters.json.
// Usage: <part-accordion></part-accordion> anywhere in <body>
// Requires: Bootstrap 5 (accordion + carousel plugins) loaded on the page.

(() => {
  const DATA_FILE = 'part-chapters.json';
  const SCRIPT_EL = document.querySelector('script[src$="part-accordion.js"]');
  const BASE_URL = SCRIPT_EL ? SCRIPT_EL.src : '/';
  let DATA_URL;
  try {
    DATA_URL = new URL(DATA_FILE, BASE_URL).href;
  } catch {
    DATA_URL = DATA_FILE;
  }

  // Unique prefix so the accordion works even if multiple instances render.
  let instanceCounter = 0;

  function esc(text) {
    return String(text).replace(/&/g, '&amp;').replace(/</g, '&lt;')
      .replace(/>/g, '&gt;').replace(/"/g, '&quot;').replace(/'/g, '&#39;');
  }

  function buildPartAccordion(container, data, prefix) {
    const accordionId = `part-accordion-${prefix}`;
    const items = data.parts.map((part, partIdx) => {
      const itemId = `part-accordion-item-${prefix}-${partIdx}`;
      const headerId = `part-accordion-head-${prefix}-${partIdx}`;
      const bodyId = `part-accordion-body-${prefix}-${partIdx}`;
      const carouselId = `part-carousel-${prefix}-${partIdx}`;
      const openClass = partIdx === 0 ? ' show' : '';
      const expanded = partIdx === 0 ? 'true' : 'false';
      const collapsed = partIdx === 0 ? '' : ' collapsed';

      const slides = part.chapters.map((chapter, slideIdx) => {
        const active = slideIdx === 0 ? ' active' : '';
        return `
          <div class="carousel-item${active}">
            <div class="part-carousel-slide">
              <h4 class="part-carousel-title">
                <span class="part-carousel-num">Ch${chapter.ch.replace('ch', '')}</span>
                ${esc(chapter.title)}
              </h4>
              <p class="part-carousel-about">${esc(chapter.about)}</p>
              <a class="btn btn-outline-primary part-carousel-link" href="${esc(chapter.href)}">Read chapter →</a>
            </div>
          </div>`;
      }).join('');

      const indicators = part.chapters.map((chapter, slideIdx) => {
        const active = slideIdx === 0 ? ' class="active"' : '';
        return `<button type="button" data-bs-target="#${carouselId}" data-bs-slide-to="${slideIdx}"${active} aria-label="Go to slide ${slideIdx + 1}"></button>`;
      }).join('');

      const labels = part.chapters.map((chapter, slideIdx) => {
        const title = esc(chapter.title);
        const active = slideIdx === 0 ? ' class="active"' : '';
        const goTo = slideIdx === 0 ? ' aria-current="true"' : '';
        return `<button type="button" data-bs-target="#${carouselId}" data-bs-slide-to="${slideIdx}"${active}${goTo}>${title}</button>`;
      }).join('');

      return `
        <div class="accordion-item part-accordion-item">
          <h2 class="accordion-header" id="${headerId}">
            <button class="accordion-button${collapsed}" type="button" data-bs-toggle="collapse"
                    data-bs-target="#${bodyId}" aria-expanded="${expanded}" aria-controls="${bodyId}">
              <span class="part-accordion-title">${esc(part.title)}</span>
              <span class="part-accordion-meta">${part.chapters.length} chapters</span>
            </button>
          </h2>
          <div id="${bodyId}" class="accordion-collapse collapse${openClass}" aria-labelledby="${headerId}" data-bs-parent="#${accordionId}">
            <div class="accordion-body part-accordion-body">
              <p class="part-accordion-blurb">${esc(part.blurb)}</p>
              <div id="${carouselId}" class="carousel slide part-carousel" data-bs-ride="carousel" data-bs-interval="false" data-bs-touch="true">
                <div class="carousel-indicators part-carousel-indicators">${indicators}</div>
                <div class="carousel-inner">${slides}</div>
                <button class="carousel-control-prev part-carousel-control" type="button" data-bs-target="#${carouselId}" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous chapter</span>
                </button>
                <button class="carousel-control-next part-carousel-control" type="button" data-bs-target="#${carouselId}" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next chapter</span>
                </button>
                <div class="carousel-caption part-carousel-labels" aria-hidden="true">
                  ${labels}
                </div>
              </div>
            </div>
          </div>
        </div>`;
    }).join('');

    container.innerHTML = `
      <div class="accordion part-accordion" id="${accordionId}">${items}</div>`;
  }

  function render() {
    document.querySelectorAll('part-accordion').forEach((el) => {
      if (el.dataset.partAccordionRendered === 'true') return;
      el.dataset.partAccordionRendered = 'true';
      const prefix = String(instanceCounter++);
      fetch(DATA_URL)
        .then((res) => { if (!res.ok) throw new Error('HTTP ' + res.status); return res.json(); })
        .then((data) => buildPartAccordion(el, data, prefix))
        .catch((err) => {
          el.dataset.partAccordionRendered = '';
          el.innerHTML = '<p class="part-accordion-error">The chapter explorer could not be loaded.</p>';
          console.error('part-accordion: failed to load ' + DATA_URL, err);
        });
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', render);
  } else {
    render();
  }
})();

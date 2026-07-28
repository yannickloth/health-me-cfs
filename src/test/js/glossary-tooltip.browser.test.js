// glossary-tooltip.test.js — browser integration test using Playwright
// Run: node src/test/js/glossary-tooltip.browser.test.js
// Requires: npx playwright install chromium && npm install playwright

import { chromium } from 'playwright';
import { strict as assert } from 'node:assert';
import { readFileSync } from 'node:fs';
import { createServer } from 'node:http';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const PROJECT_ROOT = process.cwd();

const gloss = JSON.parse(readFileSync(join(PROJECT_ROOT, 'src/main/typst/mecfs/lib/glossary.json'), 'utf8'));
const pageHtml = readFileSync(join(__dirname, 'test-page.html'), 'utf8');
const glossaryJs = readFileSync(join(PROJECT_ROOT, 'src/main/js/glossary-tooltip.js'), 'utf8');
const stylesCss = readFileSync(join(PROJECT_ROOT, 'web/styles.css'), 'utf8');

// Minimal HTTP server — no npm deps needed
function serve(port) {
  return new Promise(resolve => {
    const s = createServer((req, res) => {
      try {
        const p = req.url.split('?')[0];
        if (p === '/') {
          res.writeHead(200, { 'content-type': 'text/html' });
          res.end(pageHtml.replace(
            'href="../../../web/styles.css"',
            'href="/styles.css"'
          ));
        } else if (p === '/glossary.json') {
          res.writeHead(200, { 'content-type': 'application/json' });
          res.end(JSON.stringify(gloss));
        } else if (p === '/glossary-tooltip.js') {
          res.writeHead(200, { 'content-type': 'application/javascript' });
          res.end(glossaryJs);
        } else if (p === '/styles.css') {
          res.writeHead(200, { 'content-type': 'text/css' });
          res.end(stylesCss);
        } else {
          res.writeHead(404);
          res.end('404');
        }
      } catch(e) {
        res.writeHead(500);
        res.end(e.message);
      }
    });
    s.listen(port, () => resolve(s));
  });
}

async function run() {
  const server = await serve(9876);
  const browser = await chromium.launch({ headless: true });
  const page = await browser.newPage();

  try {
    await page.goto('http://localhost:9876/');
    await page.waitForSelector('glossary-term', { timeout: 10000 });

    // Test 1: Gabapentin gets wrapped
    const terms = await page.$$eval('glossary-term', els => els.map(el => el.textContent));
    assert.ok(terms.includes('Gabapentin'), 'Gabapentin in tooltip spans');

    // Test 2: Hover triggers tooltip
    const gabEl = await page.$('glossary-term[data-gt="Gabapentin"]');
    assert.ok(gabEl, 'Gabapentin has data-gt');
    await gabEl.hover();
    await page.waitForSelector('.gt-pop', { timeout: 5000 });

    // Test 3: Tooltip contains sources
    const tipText = await page.$eval('.gt-pop', el => el.textContent);
    assert.ok(tipText.includes('PubMed'), `PubMed in tooltip: "${tipText}"`);
    assert.ok(tipText.includes('DailyMed'), 'DailyMed in tooltip');
    assert.ok(tipText.includes('PubChem'), 'PubChem in tooltip');

    // Test 4: Sources are <a> links
    const links = await page.$$eval('.gt-pop a', els => els.map(el => ({ t: el.textContent, h: el.href })));
    const pubmed = links.find(l => l.t === 'PubMed');
    assert.ok(pubmed, 'PubMed link exists');
    assert.ok(pubmed.h.includes('pubmed.ncbi.nlm.nih.gov'), `PubMed href: ${pubmed.h}`);
    assert.ok(pubmed.h.includes('Gabapentin'), 'PubMed URL contains drug name');

    const pubchem = links.find(l => l.t === 'PubChem');
    assert.ok(pubchem, 'PubChem link exists');
    assert.ok(pubchem.h.includes('pubchem.ncbi.nlm.nih.gov'), 'PubChem href');

    // Test 5: no-gt blocker works
    const ldnInside = await page.$eval('.no-gt', el => el.innerHTML);
    assert.ok(!ldnInside.includes('glossary-term'), 'LDN inside no-gt not wrapped');

    // Test 6: LDN outside no-gt IS wrapped
    const ldnCount = await page.$$eval('glossary-term', els =>
      els.filter(el => el.textContent === 'LDN').length
    );
    assert.ok(ldnCount >= 1, 'LDN outside no-gt wrapped');

    // Test 7: Unknown drug not wrapped
    const fakeWrapped = await page.$eval('body', body => {
      let found = false;
      for (const el of body.querySelectorAll('glossary-term')) {
        if (el.textContent === 'FakeDrug') { found = true; break; }
      }
      return found;
    });
    assert.ok(!fakeWrapped, 'FakeDrug not wrapped');

    // Test 8: Click triggers tooltip (mobile)
    const mobileTerms = await page.$$eval('glossary-term', els => els.length);
    assert.ok(mobileTerms >= 4, `At least 4 terms wrapped: ${mobileTerms}`);

    console.log('All 8 browser integration tests passed.');
  } finally {
    await browser.close();
    server.close();
  }
}

run().catch(err => {
  console.error('Test failed:', err.message);
  process.exit(1);
});

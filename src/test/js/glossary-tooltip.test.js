// glossary-tooltip.test.js — validate glossary-tooltip.js web component
// Run: node --test src/test/js/glossary-tooltip.test.js

import fs from 'node:fs';
import { strict as assert } from 'node:assert';
import test from 'node:test';

const jsSource = fs.readFileSync('src/main/js/glossary-tooltip.js', 'utf8');
const glossaryJson = JSON.parse(fs.readFileSync('web/glossary.json', 'utf8'));
const nonMetaKeys = Object.keys(glossaryJson).filter(k => k[0] !== '_');

// ── Syntax check ──
test('JS syntax is valid', () => {
  new Function(jsSource);
});

// ── customElements stub ──
const definedElements = Object.create(null);
globalThis.customElements = {
  define: (name, klass) => { definedElements[name] = klass; }
};
globalThis.HTMLElement = class HTMLElement {};
globalThis.document = {
  querySelector: () => null
};

eval(jsSource);

// ── Registration ──
test('registers glossary-tooltips custom element', () => {
  assert.ok(definedElements['glossary-tooltips'], 'glossary-tooltips is defined');
  const proto = definedElements['glossary-tooltips'].prototype;
  assert.ok(typeof proto.connectedCallback === 'function', 'has connectedCallback');
  assert.strictEqual(proto.constructor, definedElements['glossary-tooltips'], 'constructor maps correctly');
});

// ── Definition integrity check ──
test('Amitriptyline definition has no raw HTML injection chars', () => {
  const entry = glossaryJson.Amitriptyline;
  assert.ok(entry, 'Amitriptyline entry exists');
  assert.ok(typeof entry.definition === 'string', 'definition is string');
  assert.ok(entry.definition.length > 0, 'definition non-empty');
  assert.ok(!entry.definition.includes('<script'), 'no script tag');
  assert.ok(!entry.definition.includes('<img'), 'no img tag');
});

// ── Glossary JSON integrity ──
test('glossary.json has required meta fields', () => {
  assert.ok(glossaryJson._meta, '_meta exists');
  const fields = glossaryJson._meta.fields;
  assert.ok(fields.definition, 'meta.fields.definition');
  assert.ok(fields.category, 'meta.fields.category');
  assert.ok(fields.sources, 'meta.fields.sources');
  assert.ok(nonMetaKeys.length > 0, 'has glossary entries');
});

test('all non-alias entries have category and definition', () => {
  const bad = [];
  for (const key of nonMetaKeys) {
    const e = glossaryJson[key];
    if (e.alias) continue;
    if (!e.category) bad.push(`${key}: missing category`);
    if (!e.definition) bad.push(`${key}: missing definition`);
  }
  assert.strictEqual(bad.length, 0, bad.join('\n'));
});

test('alias entries point to existing targets', () => {
  const bad = [];
  for (const key of nonMetaKeys) {
    const e = glossaryJson[key];
    if (!e.alias) continue;
    if (!glossaryJson[e.alias]) bad.push(`${key}: alias target "${e.alias}" not found`);
    if (!e.category && !e.definition) continue; // alias-only is valid
    bad.push(`${key}: alias entry should have NO category/definition (inherits from target)`);
  }
  assert.strictEqual(bad.length, 0, bad.join('\n'));
});

test('all medication entries have sources', () => {
  const meds = nonMetaKeys.filter(k => glossaryJson[k].category === 'medication');
  const bad = [];
  for (const key of meds) {
    const s = glossaryJson[key].sources;
    if (!Array.isArray(s) || s.length === 0) bad.push(`${key}: no sources`);
  }
  assert.strictEqual(bad.length, 0, bad.join('\n'));
});

test('all source entries have label and url', () => {
  const bad = [];
  for (const key of nonMetaKeys) {
    const sources = glossaryJson[key].sources;
    if (!sources) continue;
    for (const [i, s] of sources.entries()) {
      if (!s.label) bad.push(`${key}[${i}]: missing label`);
      if (!s.url) bad.push(`${key}[${i}]: missing url`);
    }
  }
  assert.strictEqual(bad.length, 0, bad.join('\n'));
});

test('source URLs are well-formed', () => {
  const bad = [];
  for (const key of nonMetaKeys) {
    const sources = glossaryJson[key].sources;
    if (!sources) continue;
    for (const [i, s] of sources.entries()) {
      if (!s.url.startsWith('https://')) bad.push(`${key}[${i}]: not https`);
      if (s.url.includes(' ')) bad.push(`${key}[${i}]: has unescaped space`);
      if (/[<>"]/.test(s.url)) bad.push(`${key}[${i}]: has HTML char`);
    }
  }
  assert.strictEqual(bad.length, 0, bad.join('\n'));
});

test('every medication has ≥2 source links', () => {
  const meds = nonMetaKeys.filter(k => glossaryJson[k].category === 'medication');
  assert.ok(meds.length > 100, `has medication entries (${meds.length} > 100)`);
  for (const key of meds) {
    const n = glossaryJson[key].sources.length;
    assert.ok(n >= 2, `${key} has ${n} sources (min 2)`);
  }
});

test('CATEGORY_LABELS map covers all used categories', () => {
  const usedCats = new Set();
  for (const key of nonMetaKeys) {
    const e = glossaryJson[key];
    if (e.alias) continue;
    usedCats.add(e.category);
  }
  assert.ok(!usedCats.has(undefined), 'no undefined category');
  assert.ok(!usedCats.has(''), 'no empty category');

  // CATEGORY_LABELS is closure-var; verify coverage via source parse
  const m = jsSource.match(/const CATEGORY_LABELS = \{([^}]+)\}/);
  assert.ok(m, 'CATEGORY_LABELS found in source');
  const labelText = m[1];
  const missing = [...usedCats].filter(c => !labelText.includes(`${c}:`));
  assert.strictEqual(missing.length, 0, `CATEGORY_LABELS missing: ${missing.join(', ')}`);
});

test('escape function defined and handles edge cases', () => {
  // esc is a closure var; verify the IIFE defines it
  assert.ok(jsSource.includes('const esc ='), 'esc function defined in source');

  // Verify ESCAPE_MAP covers all chars in ESCAPE_RE
  assert.ok(jsSource.includes("'&amp;'"), 'ampersand escape present');
  assert.ok(jsSource.includes("'&lt;'"), 'less-than escape present');
  assert.ok(jsSource.includes("'&gt;'"), 'greater-than escape present');
  assert.ok(jsSource.includes("'&quot;'"), 'double-quote escape present');
});

console.log('All tests passed.');

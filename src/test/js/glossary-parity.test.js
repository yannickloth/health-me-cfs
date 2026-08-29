// glossary-parity.test.js — key parity between EN/FR/DE glossary files
// Run: node --test src/test/js/glossary-parity.test.js

import fs from 'node:fs';
import { strict as assert } from 'node:assert';
import test from 'node:test';

const load = (lang) =>
  JSON.parse(fs.readFileSync(`src/main/resources/glossary-${lang}.json`, 'utf8'));

const en = load('en');
const enKeys = Object.keys(en).filter(k => k[0] !== '_');

for (const lang of ['fr', 'de']) {
  const gloss = load(lang);
  const keys = new Set(Object.keys(gloss).filter(k => k[0] !== '_'));

  test(`${lang}: every EN key exists (EN ⊆ ${lang.toUpperCase()})`, () => {
    const missing = enKeys.filter(k => !keys.has(k));
    assert.strictEqual(missing.length, 0, `missing in glossary-${lang}.json:\n${missing.join('\n')}`);
  });

  test(`${lang}: no empty definitions`, () => {
    const bad = [];
    for (const k of keys) {
      const e = gloss[k];
      if (e.alias) continue;
      if (e.definition !== undefined && e.definition.trim() === '') bad.push(k);
    }
    assert.strictEqual(bad.length, 0, bad.join('\n'));
  });
}

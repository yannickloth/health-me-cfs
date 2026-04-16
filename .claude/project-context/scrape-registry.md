> **Style rule:** Telegraphic — tables/lists/symbols > prose.

# Scrape Registry Protocol

**Location:** `registry/scrape-registry.md`

MUST use whenever scraping websites or accessing URLs for content integration. Prevents re-processing already-integrated content across sessions.

## Before Scraping Any URL

- Check `registry/scrape-registry.md` — URL already listed with `Integrated` date → skip, unless source shows newer publication date than `Scraped` date

## After Integrating Content from a URL

1. Add URL to registry if absent
2. Set `Integrated` → today's date
3. Set `Target` → chapter(s) where integrated

## After Scraping a New Source

1. Add source to Sources table with `Last Scraped` date
2. Add all discovered article URLs to Articles table

## Columns

`URL | Source | Scraped | Integrated | Target`

- `Integrated = —` → pending
- Re-scrape + source newer than `Scraped` → update `Scraped`, reset `Integrated` to `—`

Per-source catalog files (e.g. `content-staging/mecfsscience-org-catalog.md`) are temporary — delete after all entries transferred to registry.

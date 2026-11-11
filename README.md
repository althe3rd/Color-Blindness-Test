# Color Vision Test Station

An interactive, single-file teaching tool that shows how interface color choices hold up for people with color vision deficiency (CVD).

## What it does

- **Two palettes**
  - **Difficult**: low-contrast blues, yellows, reds and greens, with color as the *only* cue. Links have no underline, status is shown by colored dots, errors by a red border, and chart series by hue alone.
  - **Accessible**: passes WCAG 2.2 AA throughout. Every color is backed by a non-color cue: underlines, icons, text labels, chart markers, dash patterns and direct labels. It's safe for red-green *and* blue-yellow deficiencies.
- **Four simulations**: protanopia, deuteranopia, tritanopia and achromatopsia, with a severity slider (10–100%) for anomalous trichromacy.
- **Side-by-side view**: the original and the simulated preview next to each other.
- **Live contrast audit**: WCAG contrast ratios for every token pair in the active palette, before and after simulation.
- **Shareable state**: the palette, simulation, severity and layout are kept in the URL (`?palette=accessible&sim=deutan&severity=60&split=1`).
- **Preview components**: navigation, links in body text (with a "find the links" challenge), buttons, status indicators, alerts, form validation, a line chart and palette tokens.

The tool follows its own advice. It uses keyboard-operable native radios and switches, visible focus rings, live-region announcements, reduced-motion support and a dark mode for the surrounding interface.

## Simulation method

A `feColorMatrix` filter runs in linear RGB, using the full-severity matrices from
Machado, Oliveira & Fernandes (2009), *A Physiologically-based Model for Simulation of Color Vision Deficiency*.
Lower severities blend linearly toward normal vision, which is an approximation. Achromatopsia maps each color to its relative luminance.
The audit table uses the same math in JavaScript.

## Prevalence (approximate)

| Type | Affected cone | Prevalence |
|---|---|---|
| Deuteranopia / deuteranomaly | M (green) | ≈ 6% of men |
| Protanopia / protanomaly | L (red) | ≈ 2% of men |
| Tritanopia / tritanomaly | S (blue) | ≈ 1 in 10,000 or rarer, all sexes |
| Achromatopsia | none working | ≈ 1 in 30,000 |

Overall, about 1 in 12 men and 1 in 200 women.

## Design guidelines it demonstrates

- Never use color as the only way to convey information (WCAG 1.4.1).
- Underline links in body text. Otherwise they need 3:1 contrast against the surrounding text plus a non-color cue on hover and focus.
- Text needs 4.5:1 contrast (1.4.3). UI components and graphics need 3:1 (1.4.11).
- Pair status colors with icons and words. Pair error borders with a message.
- In charts, use markers, dash patterns and direct labels.
- Test against several deficiency types: a palette that is safe for one can fail another.

## Local development

No build step and no dependencies. You can open `index.html` directly, or serve it:

```bash
./serve.sh          # http://localhost:8000
make serve          # same, via make
npm start           # npx serve on http://localhost:3000
```

## Deployment

Pushing to `main` runs `.github/workflows/deploy.yml`, which publishes `index.html` to GitHub Pages
(set **Settings → Pages → Source** to "GitHub Actions").

## Resources

- [WebAIM: Color blindness](https://webaim.org/articles/visual/colorblind)
- [WCAG 1.4.1 Use of Color](https://www.w3.org/WAI/WCAG22/Understanding/use-of-color.html)
- [WCAG 1.4.11 Non-text Contrast](https://www.w3.org/WAI/WCAG22/Understanding/non-text-contrast.html)
- [Colour Blind Awareness](https://www.colourblindawareness.org/)

## License

MIT

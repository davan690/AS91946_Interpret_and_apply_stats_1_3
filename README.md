# AS91946: Interpret and Apply Mathematical and Statistical Information

A Quarto + R textbook for **NCEA Level 1 Achievement Standard 91946** —
*Interpret and apply mathematical and statistical information in context* (4
credits, external exam). Designed for Year 11 students in New Zealand.

## Contents

| Chapter | Topic |
|---------|-------|
| Welcome | Introduction and overview of the standard |
| 1 | What is Statistics? (PPDAC cycle, statistical questions) |
| 2 | Types of Data and Variables (categorical, numerical, ordinal, etc.) |
| 3 | Statistical Graphs and Displays (bar charts, histograms, box plots, scatter plots) |
| 4 | Measures of Centre and Spread (mean, median, IQR, standard deviation) |
| 5 | Probability (classical, experimental, two-way tables, tree diagrams) |
| 6 | Interpreting Statistical Information (bias, correlation vs causation, critical reading) |
| 7 | Practice Questions and Exam Tips (Achieved / Merit / Excellence) |

## Rendering the book

### Prerequisites

- [R](https://www.r-project.org/) (≥ 4.3)
- [Quarto](https://quarto.org/) (≥ 1.4)

### Install R packages

```r
source("setup.R")
```

### Render (HTML + PDF)

```bash
quarto render
```

The output is written to the `_book/` directory. Open `_book/index.html` in
any browser to read the HTML version.

### Render HTML only

```bash
quarto render --to html
```

### Render PDF only

```bash
quarto render --to pdf
```

> PDF rendering requires a LaTeX installation. We recommend
> [TinyTeX](https://yihui.org/tinytex/): `quarto install tinytex`

## Repository structure

```
.
├── _quarto.yml          # Quarto book configuration
├── index.qmd            # Welcome page
├── chapters/
│   ├── 01-intro.qmd     # What is Statistics?
│   ├── 02-data-types.qmd
│   ├── 03-graphs.qmd
│   ├── 04-measures.qmd
│   ├── 05-probability.qmd
│   ├── 06-inference.qmd
│   └── 07-practice.qmd
├── references.qmd       # References page
├── references.bib       # BibTeX bibliography
├── setup.R              # R package installer
└── README.md
```

## Contributing

Contributions are welcome! Please open an issue or pull request. When adding
or editing content, ensure:

- New Zealand context is maintained throughout
- R code chunks are reproducible (use `set.seed()` for random examples)
- All cross-references use Quarto's `@sec-` syntax
- Grade-level callouts (Achieved / Merit / Excellence) are clearly labelled

## Licence

MIT © Anthony R Davidson — see [LICENSE](LICENSE).

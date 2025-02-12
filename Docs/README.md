# Chicago Style Guide in LaTeX

A comprehensive guide for formatting LaTeX documents using the Chicago Manual of Style (Notes and Bibliography).

This repository provides structured instructions, templates, and scripts to facilitate document preparation in LaTeX while adhering to Chicago-style formatting. The same content is available in three formats:
- **Markdown (`.md`)** – Easier to read and edit as plain text.
- **LaTeX (`.tex`)** – Best for generating PDFs with proper formatting.
- **XML (`.xml`)** – Optimized for structured data processing and AI usage.

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Maintainers](#maintainers)

## Install

### Prerequisites

Ensure you have a LaTeX distribution with **XeLaTeX** and **Biber** installed. The recommended distributions for various platforms:

- **macOS (via MacTeX):**
  Download and install [MacTeX](https://tug.org/mactex/), which includes XeLaTeX and Biber.
  ```bash
  brew install biber
  ```
- **Linux (Debian/Ubuntu):**
  ```bash
  sudo apt-get update
  sudo apt-get install texlive-xetex texlive-bibtex-extra biber
  ```
- **Linux (Arch-based):**
  ```bash
  sudo pacman -Syu texlive-core texlive-bibtexextra biber
  ```
- **Windows:**
  Install [TeX Live](https://www.tug.org/texlive/) and ensure `xelatex` and `biber` are added to your system PATH.

### Cloning the Repository

```bash
git clone https://github.com/kgruiz/Chicago-Style-Guide.git
cd Chicago-Style-Guide
```

## Usage

This repository contains structured guides for formatting LaTeX documents according to the Chicago Manual of Style. Choose the appropriate section based on your needs:

- **Overall Document Formatting (`Overall-LaTeX/`)**
  Provides guidelines for setting up LaTeX documents, including:
  - Document class selection
  - Page layout configuration
  - Font settings
  - Header and footer formatting
  - Enabling double-spacing

- **Chicago-Style Citations (`Citations-LaTeX/`)**
  Contains detailed instructions for using the `biblatex-chicago` package to manage citations. Includes:
  - Configuration of Chicago-style footnotes and bibliography
  - Sample `.bib` file with references
  - Citation commands (`\autocite`, `\footcite`, etc.)
  - Example LaTeX document demonstrating correct formatting

- **Automation Script (`compile.zsh`)**
  Automates the document compilation process, executing:
  - `xelatex` (initial compilation)
  - `biber` (bibliography processing)
  - `xelatex` (final compilation to resolve references)

  To compile a document, run:
  ```bash
  ./compile.zsh
  ```

  Alternatively, manually execute:
  ```bash
  xelatex essay.tex
  biber essay
  xelatex essay.tex
  xelatex essay.tex
  ```

## Maintainers

- **Kaden Gruizenga** – ([kgruiz@umich.edu](mailto:kgruiz@umich.edu))
# Chicago Style Guide in LaTeX

A comprehensive guide for formatting LaTeX documents using the Chicago Manual of Style (Notes and Bibliography).

This repository provides structured instructions, templates, and scripts to facilitate document preparation in LaTeX while adhering to Chicago-style formatting. The same content is available in three formats:
- **Markdown (`.md`)** – Easier to read and edit as plain text.
- **LaTeX (`.tex`)** – Best for generating PDFs with proper formatting.
- **XML (`.xml`)** – Optimized for structured data processing and AI usage.

## Table of Contents

- [Install](#install)
- [Usage](#usage)
- [Compile Script](#compile-script)
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

- **Overall Document Formatting (`Overall/`)**

  Provides guidelines for setting up LaTeX documents, including:
  - Document class selection
  - Page layout configuration
  - Font settings
  - Header and footer formatting
  - Enabling double-spacing

  For compilation, refer to the [Compile Script](#compile-script) section.

- **Chicago-Style Citations (`Citations/`)**

  Contains detailed instructions for using the `biblatex-chicago` package to manage citations. Includes:
  - Configuration of Chicago-style footnotes and bibliography
  - Sample `.bib` file with references
  - Citation commands (`\autocite`, `\footcite`, etc.)
  - Example LaTeX document demonstrating correct formatting

  For compilation, refer to the [Compile Script](#compile-script) section.

## Compile Script

The repository includes an automation script (`compile.zsh`) that simplifies the compilation process by logging output and cleaning up auxiliary files if no errors occur. Customize the `TEX_FILE` and `LOG_FILE` variables at the top of the script as needed.

To run the script:

Run this once to make it executable:
```zsh
chmod +x compile.zsh
```

Then execute it:
```bash
./compile.zsh
```

Alternatively, run without changing permissions:
```zsh
zsh compile.zsh
```

## Maintainers

- **Kaden Gruizenga** – ([kgruiz@umich.edu](mailto:kgruiz@umich.edu))
# Using Chicago Manual of Style with LaTeX

This guide explains how to set up your LaTeX document for Chicago Manual of Style (Notes and Bibliography) citations using the `biblatex-chicago` package. The instructions below integrate the necessary setup for the document structure along with detailed steps for citing sources and compiling your document using XeLaTeX.

## Create a New LaTeX File
Create a new LaTeX file (e.g., `essay.tex`).

## Specify the Document Class and Input Encoding
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
```

## Load Font and Font-Related Packages
```latex
\usepackage{fontspec}
\usepackage{lmodern}
\setmainfont{Times New Roman}
```

## Include Packages for Hyperlinks, Spacing, and Headers
```latex
\usepackage{hyperref}
\usepackage{setspace}
\usepackage{fancyhdr}
```

## Configure Page Layout and Font Size
```latex
\usepackage[margin=1in]{geometry}
\usepackage[12pt]{moresize}
```

## Set Up the Bibliography for Chicago Notes and Bibliography Style
This configuration uses the Chicago style with notes (footnote citations) and a formatted bibliography.
```latex
\usepackage[notes,backend=biber,short]{biblatex-chicago}
\addbibresource{references.bib}
```

## Enable Double Spacing
```latex
\doublespacing
```

## Define Custom Commands for the Name Block and Essay Title
```latex
\newcommand{\nameblock}[4][\today]{%

    \noindent #2 \\
    #3 \\
    #4 \\
    #1
}

\newcommand{\essaytitle}[1]{%
    \begin{center}

        {\normalsize \textbf{#1}}
    \end{center}
}
```

## Set Up the Header to Display the Page Number on the Right
```latex
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
```

## Begin the Document and Insert Content
```latex
\begin{document}

\nameblock{Your Name}{Course Info}{Instructor Name}

\essaytitle{Your Essay Title}

% Your essay content here using \autocite for citations
```

## Citing Sources in Your Document
Use the `\autocite` command to automatically generate Chicago-style footnotes for your citations. The first citation provides a full reference, and subsequent citations use a shortened format if the `short` option is enabled.

**Example:**
```latex
World War I had lasting impacts on Germany\autocite{GermanHistoryVersailles}.
```

Another example:
```latex
Otto Dix depicted war as overwhelming destruction\autocite{UMMAArtilleryBattle}.
```

## Print the Bibliography and Close the Document
```latex
\clearpage

\pagenumbering{gobble}

\renewcommand{\bibfont}{\setstretch{1}}

\printbibliography

\end{document}
```

## Compile the Document
To compile your document using XeLaTeX and Biber, follow these steps:

1. **Run XeLaTeX on your document:**
   ```bash
   xelatex essay.tex
   ```

2. **Process the bibliography with Biber:**
   ```bash
   biber essay
   ```

3. **Run XeLaTeX again to update references:**
   ```bash
   xelatex essay.tex
   ```

4. **Run XeLaTeX one more time to ensure all citations are correctly updated:**
   ```bash
   xelatex essay.tex
   ```

**Combined command example:**
```bash
xelatex essay.tex && biber essay && xelatex essay.tex && xelatex essay.tex
```

## Example Bibliography Entries
Below are sample entries for the `references.bib` file:
```bibtex
@online{UMMAArtilleryBattle,
    author      = {University of Michigan Museum of Art},
    title       = {Artillery Battle (Artillerieschlacht)},
    shortauthor = {UMMA},
    shorttitle  = {Artillery Battle},
    year        = {1917},
    url         = {https://umma.umich.edu/objects/artillery-battle-artillerieschlacht-1967-1-41/},
    urldate     = {2025-02-10},
}

@online{UMMAHunger,
    author      = {University of Michigan Museum of Art},
    title       = {Hunger},
    shortauthor = {UMMA},
    shorttitle  = {Hunger},
    year        = {1924},
    url         = {https://umma.umich.edu/objects/hunger-1957-1-105/},
    urldate     = {2025-02-10},
}

@misc{Hartlaub1925,
    author       = {Gustav Friedrich Hartlaub},
    title        = {Introduction to the \textit{Neue Sachlichkeit} Exhibition Catalogue},
    shortauthor  = {Hartlaub},
    shorttitle   = {Neue Sachlichkeit},
    howpublished = {Exhibition catalog, Kunsthalle Mannheim},
    year         = {1925},
}

@book{Plumb2006,
    author      = {Steve Plumb},
    title       = {{\textit{Neue Sachlichkeit} 1918--33: Unity and Diversity of an Art Movement}},
    shortauthor = {Plumb},
    shorttitle  = {Neue Sachlichkeit 1918--33},
    publisher   = {Rodopi},
    address     = {Amsterdam},
    year        = {2006},
}

@online{GermanHistoryVersailles,
    author      = {German History in Documents and Images},
    title       = {Treaty of Versailles and its Economic Impact},
    shortauthor = {GHDI},
    shorttitle  = {Versailles Economic Impact},
    year        = {1919},
    url         = {https://ghdi.ghi-dc.org/pdf/eng/DEST_SOLMITZ_ENG.pdf},
    urldate     = {2025-02-10},
}
```

## \texttt{compile.zsh} Script to Automate Compiling
Below is an example shell script to automate the compiling process:
```bash
echo "------------------------------------------------" | tee compile.log
echo "xelatex essay.tex" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
xelatex -interaction=nonstopmode -file-line-error essay.tex 2>&1 | tee -a compile.log

echo "------------------------------------------------" | tee -a compile.log
echo "biber essay" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
biber essay 2>&1 | tee -a compile.log

echo "------------------------------------------------" | tee -a compile.log
echo "xelatex essay.tex" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
xelatex -interaction=nonstopmode -file-line-error essay.tex 2>&1 | tee -a compile.log

echo "------------------------------------------------" | tee -a compile.log
echo "xelatex essay.tex" | tee -a compile.log
echo "------------------------------------------------" | tee -a compile.log
xelatex -interaction=nonstopmode -file-line-error essay.tex 2>&1 | tee -a compile.log
```
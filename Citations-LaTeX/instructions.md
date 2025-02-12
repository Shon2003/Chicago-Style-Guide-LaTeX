# Using Chicago Manual of Style (Notes and Bibliography) with LaTeX and biblatex-chicago

This guide explains how to set up your LaTeX document for Chicago Manual of Style (Notes and Bibliography) citations using the `biblatex-chicago` package. Below are the detailed instructions, code examples, and compilation steps using XeLaTeX.

---

## Step 1: Load the Package

Include the following in your document preamble to load the `biblatex-chicago` package with the necessary options for notes and bibliography style. The `notes` option enables Chicago-style footnotes. The `backend=biber` option specifies Biber as the bibliography processor and `short` enables shortened citations on subsequent uses.

```latex
\usepackage[notes,backend=biber,short]{biblatex-chicago}
```

---

## Step 2: Add the Bibliography Resource

Register your bibliography file (e.g. `references.bib`) in the preamble.

```latex
\addbibresource{references.bib}
```

---

## Step 3: Citing Sources in Your Document

Use the `\autocite` command to automatically generate Chicago-style footnotes (Notes and Bibliography style) for your citations. The first citation provides a full reference, and subsequent citations use a shortened format if the `short` option is enabled.

**Example:**

```latex
World War I had lasting impacts on Germany\autocite{GermanHistoryVersailles}.
```

Another example:

```latex
Otto Dix depicted war as overwhelming destruction\autocite{UMMAArtilleryBattle}.
```

---

## Step 4: Print the Bibliography

At the end of your document, include the following command to display the complete bibliography:

```latex
\printbibliography
```

---

### Step 4.5: Single Spacing in the Bibliography

To ensure that the bibliography is single-spaced, include the following command before printing the bibliography:

```latex
\renewcommand{\bibfont}{\setstretch{1}}
```

---

## Step 5: Compilation Instructions with XeLaTeX

To compile your document using XeLaTeX, follow these steps:

1. Run XeLaTeX on your document:
   ```bash
   xelatex essay.tex
   ```

2. Process the bibliography with Biber:
   ```bash
   biber essay
   ```

3. Run XeLaTeX again to update references:
   ```bash
   xelatex essay.tex
   ```

4. Run XeLaTeX one more time to ensure all citations are correctly updated:
   ```bash
   xelatex essay.tex
   ```

**Combined:**
```bash
xelatex essay.tex && biber essay && xelatex essay.tex && xelatex essay.tex
```

### `compile.zsh` Script to Automate Compiling

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

---

## Step 6: Example Bibliography Entries

Below are sample entries from the `references.bib` file:

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

---

With these steps, your LaTeX document is configured for Chicago Manual of Style (Notes and Bibliography) citations using the `biblatex-chicago` package, and you are ready to compile with XeLaTeX.
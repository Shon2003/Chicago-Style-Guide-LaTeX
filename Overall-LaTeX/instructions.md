# Chicago Style LaTeX Format Instructions

## Step 1: Create a New LaTeX File
Create a new LaTeX file (e.g., `chicago.tex`).

## Step 2: Specify the Document Class and Input Encoding
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
```

## Step 3: Load Font and Font-Related Packages
```latex
\usepackage{fontspec}
\usepackage{lmodern}
\setmainfont{Times New Roman}
```

## Step 4: Include Packages for Hyperlinks, Spacing, and Headers
```latex
\usepackage{hyperref}
\usepackage{setspace}
\usepackage{fancyhdr}
```

## Step 5: Configure Page Layout and Font Size
```latex
\usepackage[margin=1in]{geometry}
\usepackage[12pt]{moresize}
```

## Step 6: Set Up the Bibliography for Chicago Style
```latex
\usepackage[notes,backend=biber,short]{biblatex-chicago}
\addbibresource{references.bib}
```

## Step 7: Enable Double Spacing
```latex
\doublespacing
```

## Step 8: Define Custom Commands for the Name Block and Essay Title
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

## Step 9: Set Up the Header to Display the Page Number on the Right
```latex
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
```

## Step 10: Begin the Document and Insert Content
```latex
\begin{document}

\nameblock{Your Name}{Course Info}{Instructor Name}

\essaytitle{Your Essay Title}

% Your essay content here using \autocite for citations
```

## Step 11: Print the Bibliography and Close the Document
```latex
\clearpage

\pagenumbering{gobble}

\renewcommand{\bibfont}{\setstretch{1}}

\printbibliography

\end{document}
```

## Step 12: Compile the Document
Compile the document using XeLaTeX or LuaLaTeX to ensure proper font handling.
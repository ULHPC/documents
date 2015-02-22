-*- mode: markdown; mode: visual-line; fill-column: 80 -*-
`README.md`

Copyright (c) 2015 [Sebastien Varrette](mailto:Sebastien.Varrette@uni.lu)

        Time-stamp: <Sun 2015-02-22 19:18 svarrette>

-------------------
->![UL HPC](logos/logo_ULHPC.png =100x100)<-

# UL HPC Newsletter LaTeX style

You will find here the sources for the LaTeX style of [UL HPC](http://hpc.uni.lu) newsletter.
A typical (compiled) PDF produced using this style is proposed as [`ulhpc_newsletter1.pdf`](ulhpc_newsletter1.pdf).

## Usage

To use this style:

* clone the [Github ULHPC/documents](https://github.com/ULHPC/documents) repository or make it a Git submodule of your own repository;
* copy (or make a symlink to) the LaTeX style `ulhpc_newsletter1.sty` at the root of your document;
* Compilation of this style __requires__ the following components:
   - [PGF/TikZ](http://sourceforge.net/projects/pgf/)
   - The [`lualatex`](http://www.luatex.org/) compiler
* [eventually] prepare a [GNU Makefile](http://www.gnu.org/software/make/manual/make.html) able to compile your document
   - You might want to use [my generic Makefile for LaTeX](https://github.com/Falkor/Makefiles/blob/devel/latex/Makefile), in which case you will need to place a `.Makefile.local` file at the root of your document having (for instance) the following content:

```make
LATEX = $(shell which lualatex)
```
	 
* Prepare a copy of the required logos (in PDF format) available in a known graphics path (by default at the root of your document). 
   - they **should** be named `logo_UL.pdf` and `logo_ULHPC.pdf`;
   - place the license logo file as `logo_licence.png`
   - you might want to place them in a separate folder (`logos/` for instance) in which case you shall adapt the `\graphicspath` variable as follows:

```latex
\usepackage{graphicx}
\graphicspath{{logos/}}
```

* use this style package as you would do in general.

Below is a typical setup:

```latex
\documentclass{article}
\usepackage{ulhpc_newsletter1}

\begin{document}

\ulhpctoc % Table of contents. 

% Welcome message
% Format: \begin{welcome}[<title>] ... \end{welcome}
\begin{welcome}
  [...]
\end{welcome}

\section{title 1}
[...]
\end{document}
```

## Customizations

This LaTeX style defines the following variable that you can eventually customize **before** invoking `\usepackage{ulhpc_newsletter1}`, for instance:

```latex
\def\Newstitle{My other title}
\def\ReleaseDate{June 2015}
\def\Number{2}

\usepackage{ulhpc_newsletter1}
```

See the head of `ulhpc_newsletter1.sty` for details

| Variable            | Description                                     | Default                                           |
|---------------------|-------------------------------------------------|---------------------------------------------------|
| `\Newstitle`        | Title of the newsletter                         | UL HPC Newsletter                                 |
| `\ReleaseDate`      | Release date for newsletter                     |                                                   |
| `\Number`           | Issue number                                    | 1                                                 |
| `\InstituteURL`     | Reference web site                              | http://hpc.uni.lu                                 |
| `\Editorsname`      | Editor(s) name                                  |                                                   |
| `\DocSrcURL`        | [Git] URL for the LaTeX sources of the document |                                                   |
| `\InstituteAddress` | Postal Adress for the UL HPC                    |                                                   |
| `\Licence`          | License for the document                        | CC BY-NC-SA 4.0                                   |
| `\LicenceURL`       | URL for the license details                     | http://creativecommons.org/licenses/by-nc-sa/4.0/ |
| `\Github`           | Github account                                  | ULHPC                                             |
| `\Twitter`          | Twitter account                                 | ULHPC                                             |
| `\NewsletterURL`    | Online URL for this newsletter                  | http://hpc.uni.lu/newsletters                     |
| `\docversion`       | Document version -- by default the content of   | 0.2                                               |
|                     | . the `VERSION` file                            |                                                   |

## Licence

This LaTeX style is released under the [Creative Commons Attribution-Noncommercial-Share Alike 4.0 International](http://creativecommons.org/licenses/by-nc-sa/2.0/fr/deed.en_US)
licence. In particular:

__You are free__:

* __to Share__:  copy and redistribute the material in any medium or format
* __to Remix__:  remix, transform, and build upon the material


__Under the following conditions:__

* __Attribution__: You must give **_appropriate credit_**, provide a link to the license, and **_indicate if changes were made_**. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
* __Noncommercial__: You may not use the material for **_commercial purposes_**.
* __ShareAlike__:    If you remix, transform, or build upon the material, you must distribute your contributions under the **_same_** license as the original.


For more details, see the [LICENSE](LICENSE) file.

->[![CC BY-NC-SA 4.0](logos/logo_licence.png =100x20)](https://creativecommons.org/licenses/by-nc-sa/4.0/)<-

\begin{tcolorbox}[colback=red!5!white]
\faWarningSign\ : You need to compile the articles with the \texttt{lualatex} compiler for \LaTeX!  
\end{tcolorbox}
This is required by the \texttt{fontawesome} and some TikZ fonts. 

So to summarize, in order to use this style, you'll need to:

* clone the [Github ULHPC/documents](https://github.com/ULHPC/documents) repository or make it a Git submodule of your own repository;
* copy (or make a symlink to) the LaTeX style `ulhpc_newsletter1.sty` at the root of your document;
* __ensure__ you have the following _additional_ components ready:
     - [PGF/TikZ](http://sourceforge.net/projects/pgf/)
     - The [`lualatex`](http://www.luatex.org/) compiler
     - the [pandoc](http://johnmacfarlane.net/pandoc/installing.html) markdown to LaTeX converter
     - some additional fonts ([`fontawesome`](https://www.ctan.org/tex-archive/fonts/fontawesome)) and styles (like [`qrcode`](https://www.ctan.org/pkg/qrcode)).
   Under Debian, running `apt-get install texlive-latex-base texlive-fonts-extra texlive-luatex texlive-pictures` shall be sufficient.
   Under Ubuntu, for some reason, the [`qrcode`](https://www.ctan.org/pkg/qrcode) package is not included in `texlive-pictures` such that you'll need to setup it by hand as follows:
\begin{lstlisting}[basicstyle=\scriptsize]
# See http://www.ctan.org/tex-archive/macros/latex/contrib/qrcode
$> wget http://mirrors.ctan.org/macros/latex/contrib/qrcode/qrcode.dtx
$> wget http://mirrors.ctan.org/macros/latex/contrib/qrcode/qrcode.ins
$> latex qrcode.ins      # shall produce qrcode.sty
$> rm qrcode.dtx qrcode.ins
\end{lstlisting}

* [eventually] prepare a [GNU Makefile](http://www.gnu.org/software/make/manual/make.html) able to compile your document
   - You might want to use [my generic Makefile for LaTeX](https://github.com/Falkor/Makefiles/blob/devel/latex/Makefile), in which case you will need to place a `.Makefile.local` file at the root of your document having (for instance) the following content:

\lstinputlisting[language=make]{.Makefile.local}

Then in addition to the addition of the \LaTeX\ style file \texttt{ulhpc\_newsletter1.sty} at the root of your document, you'll need:

* a copy of (or symlink to) the logos files (in PDF format) in a know path. They **should** be named `logo_UL.pdf` and `logo_ULHPC.pdf`;
* a copy of place the license logo file as `logo_licence.png`, again in a know path

You might want to place them in a separate folder (`logos/` for instance) in which case you shall adapt the `\graphicspath` variable as follows:

Finally, you'll probably want to initiate a certain number of variables / macros used in the style \textbf{prior to} the call to the style package. See the [README.md](README) for more details.

# Git Basics

## Installing Git

### 
\frametitle{Installation Notes\hfill\texttt{\href{http://git-scm.com/downloads}{git-scm.com}}}

\begin{block}{Linux / Mac OS}
\vspace*{-0.5em}
\begin{cmdline}
\cmdlineentry{apt-get install git-core \hfill\textit{\# On Debian-like systems}}\\
\cmdlineentry{yum install git          \hfill\textit{\# On CentOS-like systems}}\\
\cmdlineentry{\{ brew | port \} install git         \hfill\textit{\# Mac OS, using  \href{http://mxcl.github.com/homebrew/}{Homebrew} | \href{https://www.macports.org/}{MacPort}}}\\
\end{cmdline}

\end{block}

. . .

\columnsbegin{.7\textwidth}

\vspace*{-1.1em}
\blockbegin{Windows \hfill \href{https://msysgit.github.io/}{MsysGit}}

* Incl. Git Bash/GUI \& Shell Integration
    - use PLINk from Putty
    - install **Git bash** + command prompt
    - select checkout windows / commit unix

\blockend

\column{.3\textwidth}

\includegraphics[height=0.3\textheight]{screenshot_msysgit.pdf}

\columnsend

. . .

\vspace*{-1em}
\begin{exampleblock}{}
\centering Your turn! Ensure you have git installed
\end{exampleblock}

###

\frametitle{Git GUI
\hfill\only<1>{(default) Gitk}%
\only<2>{(Mac OS) \href{http://rowanj.github.io/gitx/}{GitX-dev}}%
\only<3>{(Windows/Mac) \href{http://www.sourcetreeapp.com/}{SourceTree}}
}

\begin{center}
\only<1>{\includegraphics[width=0.75\textwidth]{screenshot_gitk.pdf}}%
\only<2>{\includegraphics[width=0.75\textwidth]{screenshot_gitx.pdf}}%
\only<3>{\includegraphics[width=0.75\textwidth]{screenshot_sourcetree.pdf}}
\end{center}

\begin{flushleft}
\only<3>{
    \begin{itemize}
	\item Installation notes
    \begin{itemize}
	  \item Let it install a default git ignore file
	  \item make it load your SSH key created with Putty 
    \end{itemize}
    \end{itemize}
}
\end{flushleft}






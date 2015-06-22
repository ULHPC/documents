# Git Basics

## Overview and Properties

### Git Properties ###

#### (almost) Everything is local

* everything is fast
* every clone is a backup
    - (almost) __never removes data__
* you work **mainly offline**


#### Ultra Fast, Efficient \& Robust

* Snapshots, not patches (deltas)
* __Cheap branching and merging__
    - Strong support for thousands of parallel branches 
* Cryptographic integrity everywhere




## Installing Git

### 
\frametitle{Installation Notes\hfill\texttt{\href{http://git-scm.com/downloads}{git-scm.com}}}

\begin{block}{Linux / Mac OS}
\vspace*{-0.5em}
\begin{cmdline}
\cmdlineentry{apt-get install git-core \hfill\textit{\# On Debian-like systems}}\\
\cmdlineentry{yum install git          \hfill\textit{\# On CentOS-like systems}}\\
\cmdlineentry{brew install git         \hfill\textit{\# On Mac OS, using \href{http://mxcl.github.com/homebrew/}{Homebrew}}}\\
\cmdlineentry{port install git         \hfill\textit{\# On Mac OS, using \href{https://www.macports.org/}{MacPort}}}\\
\end{cmdline}

\end{block}

. . .

\columnsbegin{.7\textwidth}

\vspace*{-1.1em}
\blockbegin{Windows \hfill \href{https://msysgit.github.io/}{MsysGit}}

* <https://msysgit.github.io/>
    - Including Git Bash, Git GUI,
    - Shell Integration

\blockend

\column{.3\textwidth}

\includegraphics[height=0.3\textheight]{screenshot_msysgit.pdf}

\columnsend

. . .

\vspace*{-1em}
\begin{exampleblock}{}
\centering Your turn! Ensure you have git installed
\end{exampleblock}





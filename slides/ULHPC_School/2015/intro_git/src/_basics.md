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
\only<2>{\includegraphics[width=0.75\textwidth]{screenshot_gitx.pdf}

\url{http://rowanj.github.io/gitx/}
}%
\only<3>{\includegraphics[width=0.75\textwidth]{screenshot_sourcetree.pdf}

\url{http://www.sourcetreeapp.com/}
}
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

### Preliminary Configurations

* Global Git configuration are stored in `~/.gitconfig`
     - _Ex_: see my personal [`.gitconfig`](https://github.com/Falkor/dotfiles/blob/master/git/.gitconfig)
* You **SHOULD** at least configure your name and email to commit
     - open a terminal (Git bash under windows) for the below commands

\begin{block}{First steps}
\begin{cmdline}
  \cmdlineentry{git config ---global user.name  "Firstname LastName"}\\
  \cmdlineentry{git config ---global user.email "Firstname.LastName@uni.lu"}\\
  \cmdlineentry{git config ---global color.ui true}\hfill\textit{\# Colors}\\
  \cmdlineentry{git config ---global color.ui true}
  
\end{cmdline}
\end{block}

. . .

\begin{exampleblock}{}
~~~Your turn! Then check the changes by running:
\begin{cmdline}
  \cmdlineentry{git config -l | grep user}
\end{cmdline}
\end{exampleblock}

### Git Commands Aliases

* You can also create git command aliases in `~/.gitconfig`. _Ex_:

~~~ini
       [alias]
           up = pull origin
           pu = push origin
           st = status
           df = diff
           ci = commit -s
           br = branch
           w  = whatchanged --abbrev-commit
           ls = ls-files
           gr = log --graph --oneline --decorate
           amend = commit --amend
~~~






## Git theory

### The Three States

\includegraphics[scale=0.35]{three_states}
\vspace*{-2em}

* The local repository lives in the `.git` directory.
* The _staging area_ tracks what will go into the next commit
    - AKA "the index" 

### File Status Lifecycle

\centering\includegraphics[scale=0.35]{file_lifecycle.pdf}

* an item 

\only<1>{toto}
\only<2>{tata}

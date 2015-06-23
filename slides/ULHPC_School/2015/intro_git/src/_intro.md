
# Introduction : Git around you #

### Github \hfill \texttt{\href{http://github.com}{github.com}} ###

#### (Reference) web-based Git repository hosting service ####

\columnsbegin{0.5\textwidth}\centering\vspace{-1em}

**Set up Git**
\includegraphics[width=0.7\textwidth]{github_1.pdf}

\column{.5\textwidth}\centering\vspace{-1em}

**Create Repository**
\includegraphics[width=0.7\textwidth]{github_2.pdf}
\columnsend

\columnsbegin{0.5\textwidth}\centering

**Fork repository**
\includegraphics[width=0.7\textwidth]{github_3.pdf}

\column{.5\textwidth}\centering

**Work together**
\includegraphics[width=0.7\textwidth]{github_4.pdf}\vspace{1em}

\columnsend



### [git-scm.com](https://git-scm.com/) `--everything-is-local` ###

\centering\includegraphics[height=0.8\textheight]{screenshot_gitscm.pdf}


### [gitref.org](http://gitref.org/) ###

\centering\includegraphics[height=0.8\textheight]{screenshot_gitref.pdf}

### [Git -- the simple Guide](http://rogerdudler.github.io/git-guide/) ###

\hfill \tiny \url{http://rogerdudler.github.io/git-guide/}

\centering\includegraphics[height=0.8\textheight]{screenshot_git_simple_guide.pdf}


### Pro Git Book -- [progit.org](https://progit.org/) ###

* Open-Source Book on Git by S. Chacon and B. Straub
    - [Sources](https://github.com/progit/progit2) (on Github)
    - [Online Reading](http://git-scm.com/book/en/v2) -- [PDF](https://progit2.s3.amazonaws.com/en/2015-05-31-24e8b/progit-en.519.pdf)
* See also [Git Internal](http://opcode.org/peepcode-git.pdf), also by S. Chacon

\columnsbegin{.3\textwidth}

\hfill\includegraphics[height=0.4\textheight]{cover_progit.png}

\column{.7\textwidth}

\blockbegin{}

* _Note_: Most images of this talk comes from this book
    - more precisely the [first edition](https://github.com/progit/progit/)

\blockend

\columnsend








# About Version Control System (VCS) #

### Why use Version Control? ###

* Version Control = Revision Control = Source Control
    - lets you track your files over time.
* you probably cooked up your own!
    - ever get files like `main-v2.tex`, `CORE-proposal.doc.old` or `2015-03-cv.pdf`?

. . .

#### Version Control System (VCS)

* Integrated fool-proof framework for:
    - Backup and Restore
	- Synchronization / Collaborating
	- Short and long-term undo / Tracking changes
	- Sandboxing


### Typical VCS Workflow

\begin{columns}[t]
\only<1>{\includegraphics [scale=0.3]{basic_checkin.png}}
\only<2>{\includegraphics [scale=0.3]{first_branch.png}}
\column{.5\textwidth}
\only<1>{\includegraphics [scale=0.3]{checkout_edit.png}}
\only<2>{\includegraphics [scale=0.3]{merging.png}}
\end{columns}

### Local VCS -- RCS, Mac OS Versions

\centering\includegraphics[scale=0.3]{VCS_local.pdf}

### Centralized VCS -- CVS, SVN

\begin{center}
\only<1>{\includegraphics [scale=0.3]{VCS_centralized-1.pdf}}
\only<2>{\includegraphics [scale=0.3]{VCS_centralized-2.pdf}}
\end{center}


### Distributed VCS -- **Git**

\begin{center}
\includegraphics [scale=0.3]{VCS_distributed.pdf}

 Everybody has the full history of commits
\end{center}

-------------------

\frametitle{Tracking changes \only<1-6>{(most VCS)}\only<7->{(Git)}}

\begin{flushleft}
\vspace*{-1em}
\only<1>{\includegraphics [height=\textheight]{tracking_changes-01.pdf}}
\only<2>{\includegraphics [height=\textheight]{tracking_changes-02.pdf}}
\only<3>{\includegraphics [height=\textheight]{tracking_changes-03.pdf}}
\only<4>{\includegraphics [height=\textheight]{tracking_changes-04.pdf}}
\only<5>{\includegraphics [height=\textheight]{tracking_changes-05.pdf}}
\only<6>{\includegraphics [height=\textheight]{tracking_changes-06.pdf}}
\only<7>{\includegraphics [height=\textheight]{tracking_changes-10.pdf}}
\only<8>{\includegraphics [height=\textheight]{tracking_changes-11.pdf}}
\only<9>{\includegraphics [height=\textheight]{tracking_changes-12.pdf}}
\only<10>{\includegraphics [height=\textheight]{tracking_changes-13.pdf}}
\only<11>{\includegraphics [height=\textheight]{tracking_changes-14.pdf}}
\only<12>{\includegraphics [height=\textheight]{tracking_changes-15.pdf}}
\only<13>{\includegraphics [height=\textheight]{tracking_changes-16.pdf}}
\only<14>{\includegraphics [height=\textheight]{tracking_changes-17.pdf}}
\only<15>{\includegraphics [height=\textheight]{tracking_changes-18.pdf}}
\only<16>{\includegraphics [height=\textheight]{tracking_changes-19.pdf}}
\end{flushleft}

### VCS Taxonomy

\vspace*{-1em}
\centering\includegraphics [height=\textheight]{taxonomy-examples.pdf}


<!--
### Git vs. Subversion

\includegraphics [width=\textwidth]{what-git-is.pdf}

> Git thinks of its data more like a set of snapshots of a mini filesystem.

####

* Subversion (`svn`) belongs to the _Delta Storage_ class
* Git relies on _snapshots_ (identified by SHA-1 checksums)
-->


### So what makes Git so useful? ###

#### (almost) Everything is local

* everything is fast
* every clone is a backup
* you work **mainly offline**


#### Ultra Fast, Efficient \& Robust

* Snapshots, not patches (deltas)
* __Cheap branching and merging__
    - Strong support for thousands of parallel branches 
* Cryptographic integrity everywhere

### Other Git features ###

* __Git doesn't delete__
    - __Immutable__ objects
    - Git generally only adds data 
    - If you mess up, you can usually recover your stuff 
        * Recovery can be tricky though

. . .

#### Git Tools / Extension

* cf. __Git [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)__ or __[subtrees](https://git-scm.com/book/en/v2/Git-Tools-Subtree-Merging)__
* __Introducing [git-flow](https://github.com/nvie/gitflow)__
    - workflow with a strict branching model
    -  offers the `git` commands to follow the workflow
	
\begin{cmdline}
\cmdlineentry{git flow init}\\
\cmdlineentry{git flow feature \{ start, publish, finish \}  <name>}\\
\cmdlineentry{git flow release \{ start, publish, finish \}  <version>}\\
\end{cmdline}


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

### So what is Git ?  ###

#### 

* __Fully Distributed__ Version Control System (VCS)
    - (almost) **every is local**
* __Ultra Fast and Efficient__
	- Cheap branching and merging
* Flexible \& Robust
* Data Insurance
    - cryptographic integrity for every bit of the repository.







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

### Local VCS -- RCS

\includegraphics[scale=0.4]{VCS_local.pdf}

### Centralized VCS -- CVS, SVN

\begin{flushleft}
\only<1>{\includegraphics [scale=0.4]{VCS_centralized-1.pdf}}
\only<2>{\includegraphics [scale=0.4]{VCS_centralized-2.pdf}}
\end{flushleft}


### Distributed VCS -- **Git**

\includegraphics [scale=0.4]{VCS_distributed.pdf}

### Git vs. Subversion

\includegraphics [width=\textwidth]{what-git-is.pdf}

> Git thinks of its data more like a set of snapshots of a mini filesystem.

####

* Subversion (`svn`) belongs to the _Delta Storage_ class
* Git relies on _snapshots_ (identified by SHA-1 checksums)


### Delta vs. Snapshot (DAG) Storage

\vspace*{-1em}
\begin{flushleft}
\only<1>{\includegraphics [height=\textheight]{taxonomy-00.pdf}}
\only<2>{\includegraphics [height=\textheight]{taxonomy-01.pdf}}
\only<3>{\includegraphics [height=\textheight]{taxonomy-02.pdf}}
\only<4>{\includegraphics [height=\textheight]{taxonomy-03.pdf}}
\only<5>{\includegraphics [height=\textheight]{taxonomy-04.pdf}}
\only<6>{\includegraphics [height=\textheight]{taxonomy-05.pdf}}
\only<7>{\includegraphics [height=\textheight]{taxonomy-10.pdf}}
\only<8>{\includegraphics [height=\textheight]{taxonomy-11.pdf}}
\only<9>{\includegraphics [height=\textheight]{taxonomy-12.pdf}}
\only<10>{\includegraphics[height=\textheight]{taxonomy-13.pdf}}
\only<11>{\includegraphics[height=\textheight]{taxonomy-14.pdf}}
\only<12>{\includegraphics[height=\textheight]{taxonomy-15.pdf}}
%\only<13>{\includegraphics[height=\textheight]{taxonomy.pdf}}
\end{flushleft}

### VCS Taxonomy

\vspace*{-2em}
\centering\includegraphics [height=\textheight]{taxonomy-examples.pdf}

### File Based Delta Storage: Example 

\vspace*{-1em}
\begin{flushleft}
\only<1>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-001.pdf}}
\only<2>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-002.pdf}}
\only<3>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-003.pdf}}
\only<4>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-004.pdf}}
\only<5>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-005.pdf}}
\only<6>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-006.pdf}}
\only<7>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-007.pdf}}
\only<8>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-008.pdf}}
\only<9>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-009.pdf}}
\only<10>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-010.pdf}}
\only<11>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-011.pdf}}
\only<12>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-012.pdf}}
\only<13>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-013.pdf}}
\end{flushleft}



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

### Local VCS -- RCS, Mac OS Versions

\includegraphics[scale=0.4]{VCS_local.pdf}

### Centralized VCS -- CVS, SVN

\begin{flushleft}
\only<1>{\includegraphics [scale=0.4]{VCS_centralized-1.pdf}}
\only<2>{\includegraphics [scale=0.4]{VCS_centralized-2.pdf}}
\end{flushleft}


### Distributed VCS -- **Git**

\includegraphics [scale=0.4]{VCS_distributed.pdf}

* everybody has full history

### VCS Taxonomy

\vspace*{-1em}
\centering\includegraphics [height=\textheight]{taxonomy-examples.pdf}

### So what is Git ?  ###

#### 

* __Fully Distributed__ Version Control System (VCS)
    - (almost) **everything is local**
	- every clone is a backup
	    * (almost) never removes data
	- you work **mainly offline**
* __Ultra Fast and Efficient__
    - Snapshots, not patches (deltas)
    - Cheap branching and merging
* Flexible \& Robust
* Data Insurance
    - cryptographic integrity for every bit of the repository.

### Git vs. Subversion

\includegraphics [width=\textwidth]{what-git-is.pdf}

> Git thinks of its data more like a set of snapshots of a mini filesystem.

####

* Subversion (`svn`) belongs to the _Delta Storage_ class
* Git relies on _snapshots_ (identified by SHA-1 checksums)

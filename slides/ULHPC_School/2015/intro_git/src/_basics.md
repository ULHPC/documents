
## Installing Git

### 
\frametitle{Installation Notes\hfill\texttt{\href{http://git-scm.com/downloads}{git-scm.com}}}

\begin{block}{Linux / Mac OS}
\vspace*{-0.5em}
\begin{cmdline}
\cmdlineentry{apt-get install git-core git-flow \hfill\textit{\# On Debian-like systems}}\\
\cmdlineentry{yum install git gitflow        \hfill\textit{\# On CentOS-like systems}}\\
\cmdlineentry{brew install git git-flow        \hfill\textit{\# On Mac OS, using   \href{http://mxcl.github.com/homebrew/}{Homebrew}}}\\
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
\toyou{Ensure you have git installed}

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
    \begin{enumerate}
	\item Let it install a default git ignore file
    \item make it load your SSH key created with Putty 
    \end{enumerate}
}
\end{flushleft}

### Preliminary Configurations

* Global Git configuration are stored in `~/.gitconfig`
     - _Ex_: see my personal [`.gitconfig`](https://github.com/Falkor/dotfiles/blob/master/git/.gitconfig)
* You **SHOULD** at least configure your name and email to commit
     - open a terminal (Git bash under windows) for the below commands

\begin{block}{}~
\begin{cmdline} % Obliged to triple '-' for seeing two
  \cmdlineentry{git config ---global user.name  "Firstname LastName"}\\
  \cmdlineentry{git config ---global user.email "Firstname.LastName@uni.lu"}\\
  \cmdlineentry{git config ---global color.ui true}\hfill\textit{\# Colors}\\
  \cmdlineentry{git config ---global core.editor vim}\hfill\textit{\# Editor}
  
\end{cmdline}
\end{block}

. . .

\toyou

* Then check the changes by: `git config -l | grep user`

### Git Commands Aliases

* You can also create git command aliases in `~/.gitconfig`. 
    - _Ex_ copy/paste from my personal [`.gitconfig`](https://github.com/Falkor/dotfiles/blob/master/git/.gitconfig)

~~~ini
       [alias]
           up = pull origin
           pu = push origin
           st = status
           df = diff
           ci = commit -s
		   co = checkout
           br = branch
           w  = whatchanged --abbrev-commit
           ls = ls-files
           gr = log --graph --oneline --decorate
           amend = commit --amend
~~~






## Git theory

### The Three (local) States

\includegraphics[scale=0.35]{three_states}
\vspace*{-2em}

* The local repository lives in the `.git` directory.
* The _staging area_ tracks what will go into the next commit
    - AKA "the index" 









## Basic Commands

### Creating a Repository

\gitcommand{git [flow] init}

* Initializes a new git ([flow](https://github.com/nvie/gitflow)) repository in the current directory

. . . 

\toyou

~~~bash
$> cd /tmp
$> mkdir firstproject
$> cd firstproject

$> git init
Initialized empty Git repository in /private/tmp/firstproject/.git/
~~~


### Cloning a Repository

\gitcommand{git clone [---recursive] <url> [<path>]}

\footnotesize

| Type  | URL Format / Example                             | Port |
|-------|----------------------------------------------|------|
| Local | `/path/to/project.git`                       |  n/a |
| SSH   | `git+ssh://user@server:port/project.git` |   22 |
| Git   | `git://server/project.git`                   | 9418 |
| HTTPS | `https://github.com/Falkor/falkorlib.git`    |  443 |
|       |                                              |      |

### Cloning a Repository

\gitcommand{git clone [---recursive] <url> [<path>]}

\toyou

~~~bash
$> cd /tmp
$> git clone https://github.com/ULHPC/tutorials.git
Cloning into 'tutorials'...
remote: Counting objects: 1247, done.
remote: Compressing objects: 100% (63/63), done.
remote: Total 1247 (delta 32), reused 0 (delta 0), pack-reused 1181
Receiving objects: 100% (1247/1247), 15.74 MiB | 3.08 MiB/s, done.
Resolving deltas: 100% (588/588), done.
Checking connectivity... done.
$> git clone --recursive \
       https://github.com/ULHPC/tutorials.git /tmp/tutorials2
~~~

<!--
### Recording Changes to the Repository

\centering\includegraphics[scale=0.35]{file_lifecycle.pdf}
-->

### Inspecting a Repository

\gitcommand{git status [-s]\hfill\textit{\# -s: short / simplified output}}

. . .

\toyou

\columnsbegin{.4\textwidth}

~~~bash
$> cd /tmp/firstproject
$> git status
On branch master

Initial commit

nothing to commit

# Create an empty file
$> touch README.md
~~~

\column{.6\textwidth}

~~~bash
$> git status
On branch master

Initial commit

Untracked files:
	README

nothing added to commit but untracked
files present
$> git status -s
?? README
~~~

\columnsend

### Add / Tracking [new] file(s) 

\vspace*{-1.25em}
\columnsbegin{.6\textwidth}

\gitcommand{git add [-f] <pattern>}

* Adds changes to the index
    - Add a specific file: `git add README`
    - Add a set of files:  `git add *.py`
	
\column{0.4\textwidth}

\includegraphics[width=\textwidth]{diagrams_add_commit-02.pdf}

\columnsend

* Beware that empty directory cannot be added _directly_
    - due to the internal file representation (_blobs_)
	- _Tips_: add an hidden file `.empty` (or `.gitignore`)


. . .

\vspace*{-1em}\toyou

\columnsbegin{.4\textwidth}

~~~bash
$> cd /tmp/firstproject
$> git status -s
?? README
~~~

\column{.5\textwidth}

~~~bash
$> git add README
$> git status -s
A  README
~~~

\columnsend

### Committing your changes

\vspace*{-1.25em}
\columnsbegin{.6\textwidth}

\gitcommand{git commit [-s] [-m "msg"]}

* Commit all changes: `git commit -a`

\column{0.4\textwidth}

\includegraphics[width=\textwidth]{diagrams_add_commit-03.pdf}

\columnsend

. . .

\toyou

~~~bash
$> cd /tmp/firstproject
$> git commit -s -m "add README"   # OR git ci -m "add README"
[master (root-commit) ee60f53] add README
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README
$> git status            # OR git st
On branch master
nothing to commit, working directory cleant
~~~

### Removing Files

\gitcommand{git rm [-rf] [---cached] <file>}

* `--cached`: remove from Staging area
    - otherwise (default): from index **and** file system 


### Ignoring Files

\bbegin{Ignoring files from staging: `.gitignore`}

* you can create a `.gitignore` file listing patterns to ignore
    - Blank lines or lines starting with `\#` are ignored
	- End pattern with slash (`/`) to specify a directory
	- Negate pattern with exclamation point (`!`)
* [Collection of useful `.gitignore` templates](https://github.com/github/gitignore)

\bend

\columnsbegin{.2\textwidth}

~~~bash
.DS_Store
*~
~~~

\column{0.2\textwidth}

~~~bash
*.asv
*.m~
*.mex*
tmp/*
~~~

\column{0.6\textwidth}
\vspace{-0.5em}

* [\LaTeX `.gitignore`](https://github.com/github/gitignore/blob/master/TeX.gitignore)
* [Python `.gitignore`](https://github.com/github/gitignore/blob/master/Python.gitignore)
* [Ruby `.gitignore`](https://github.com/github/gitignore/blob/master/Ruby.gitignore)

\columnsend



### Moving Files

\vspace*{-1.25em}
\columnsbegin{.6\textwidth}

\gitcommand{git mv <source> <destination>}

\column{0.4\textwidth}

~~~bash
# Equivalent of:
mv <source> <destination>
git rm <source>
git add <destination>
~~~

\columnsend

. . .

\toyou

~~~bash
$> cd /tmp/firstproject
$> git mv README README.md
$> git status
On branch master
Changes to be committed:
	renamed:    README -> README.md
$> git commit -m "a first move"
~~~

### Check the Commit History

\gitcommand{git log [-p] [---stat] [---graph ---oneline ---decorate]}

* `-p` / `--stat`: show the differences introduced in each commit
* You can also perform some date filtering
\begin{cmdline}
\cmdlineentry{git log ---since=2.weeks}
\end{cmdline}

* Ncurses-based text-mode interface: [`tig`](https://github.com/jonas/tig)

. . .

\vspace*{-1em}
\toyou

~~~bash
$> cd /tmp/firstproject
$> git log --oneline --graph --decorate    # OR git gr
* f1f0c27 (HEAD -> master) a first move
* ee60f53 add README
$> git log -p -1        # only the last commit OR git show
$> tig
~~~

### Show differences

\gitcommand{git diff [---cached] [<ref>]}

* Check **un-staged** changes: `git diff`
     - `--cached`: check **staged** changes
* Relative to a specific revision: 
\begin{cmdline}
\cmdlineentry{git diff 1776f5}\\
\cmdlineentry{git diff HEAD\^}\\
\end{cmdline}



### Undoing Things

\gitcommand{git commit ---amend \hfill\textit{\# Change the last commit}}

. . .

<!-- \gitcommand{git reset HEAD <file> \hfill\textit{\# Unstage staged file}} -->
\gitcommand{git unstage <file> \hfill\textit{\# or  git reset HEAD <file>}}

. . .

\gitcommand{git checkout --- <file>\hfill\textit{\# DANGER! Un-modify modified file}}

\vbegin{3}

* Restore to the last committed/cloned version: **all** changes are lost!

\vend

. . .

\gitcommand{git revert <commit> \hfill\textit{\# revert a <commit>}} 

\vbegin{4}

* Make a new commit that undoes all changes made in `<commit>`

\vend

. . . 

\vspace{-1em}\toyou

\vspace{-0.5em}
\columnsbegin{.45\textwidth}

~~~bash
$> cd /tmp/firstproject
$> git commit --amend
$> echo 'toto' >> README.md
~~~

\column{0.5\textwidth}

~~~bash
$> cat README.md && git status
$> git checkout -- README
$> git status
~~~

\columnsend


### Summary

#### Basic Workflow

Edit files
  ~ \hfill _`vim`_ / _`emacs`_ / _`subl`_ ... 

Stage the changes
  ~  \hfill _`git add`_

Review your changes
  ~  \hfill _`git status`_

Commit the changes
  ~  \hfill _`git commit`_

### Summary

#### For cheaters: A Basicerer Workflow

Edit files
  ~ \hfill _`vim`_ / _`emacs`_ / _`subl`_ ... 

Stage \& commit the changes
  ~  \hfill _`git commit -a`_

. . .

#### Advices

* __Commit early, commit often!__
     - commits = save points
     - use descriptive commit messages
* Don't get out of sync with your collaborators
* Commit the sources, not the derived files

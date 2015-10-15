
### Working Together

\vspace*{-1.25em}
\columnsbegin{.7\textwidth}

* Sign-up on [Github](http://github.com)
    - \url{http://github.com}
    - Best place to share **public** repository 

\column{0.3\textwidth}

\includegraphics[width=0.4\textwidth]{logos/logo_github.png}

\columnsend

. . .

\vspace{1em}

\bbegin{}

* Alternative for **private** projects:
    - [Gforge @ UL](https://gforge.uni.lu/) \hfill \myurl{https://gforge.uni.lu/}
    - (incoming) [Gitlab @ UL](https://gitlab.uni.lu/) \hfill\myurl{https://gitlab.uni.lu/}

\bend

. . .

* Setup your own Git server: [gitolite](https://github.com/sitaramc/gitolite)\hfill\myurl{https://github.com/sitaramc/gitolite}
    - Management through the `gitolite-admins` Git repository (!)
	- A single user (`git`) to interact with all repositories
	     * map users though their (multiple) SSH keys
		 * fine-grained access control





### Working with remotes

\centering\includegraphics[scale=0.32]{diagrams-lifecycle_remote.pdf}


### Remotes

\gitcommand{git remote [-v]}

* Other clones of the same repository 
    - Can be local (another checkout) or remote (coworker, central server) 
    - default remotes for push and pull actions: `origin` 
         * `origin` is set upon clone

. . .

\vspace*{-1em}\toyou

~~~bash
$> cd /tmp/tutorials
$> git remote
origin
$> git remote -v
origin	https://github.com/ULHPC/tutorials.git (fetch)
origin	https://github.com/ULHPC/tutorials.git (push)
~~~

### Adding Remotes

\gitcommand{git remote add <name> <url>}
<!--
* Useful upon a forked repository, to set a new `upstream` remote
\begin{cmdline}
\cmdlineentry{git remote add upstream <url>}\\
\end{cmdline}
-->

. . .

\vspace*{-1em}\toyou

* [Fork]((https://help.github.com/articles/fork-a-repo/)) the [`ULHPC/tutorials`](https://github.com/ULHPC/tutorials) (as `<yourlogin>/tutorials`) 
* Clone and add the `upstream` remote to the original repository

~~~bash
$> git clone https://github.com/<yourlogin>/tutorials.git /tmp/fork
$> cd /tmp/fork
$> git remote add upstream 	https://github.com/ULHPC/tutorials.git
$> git remote -v
origin	    https://github.com/<yourlogin>/tutorials.git (fetch)
origin	    https://github.com/<yourlogin>/tutorials.git (push)
upstream	https://github.com/ULHPC/tutorials.git (fetch)
upstream	https://github.com/ULHPC/tutorials.git (push)
~~~

### Removing Remotes

\gitcommand{git remote rm <name>}

. . .

\vspace*{-1em}\toyou

~~~bash
$> cd /tmp/fork
$> git remote
origin
upstream
$> git remove rm upstream
~~~

### Remote Branches

* Branches on remotes are represented locally as: \texttt{\footnotesize <remote>/<branch>}
     - _Ex_: `origin/master`

. . .

\vspace*{-0.5em}
\bbegin{Tracking Remote Branches}

* You can track a remote branch `<remote>/<branch>`
     - assuming you have previously `fetch` the remote `origin`
	 - creates the local branch `<branch>`
	 
\bend

\gitcommand{git branch ---track <branch> origin/<branch>}

### Tracking Remote Branches

\gitcommand{git branch ---track <branch> origin/<branch>}

\vspace*{-1em}\toyou

~~~bash
$> cd /tmp/tutorials
$> git branch -a
* devel
  remotes/origin/HEAD -> origin/devel
  remotes/origin/devel
  remotes/origin/production
$> git branch --track production origin/production
Branch production set up to track remote branch production from
origin.
$> git branch
* devel
  production
~~~

### Pushing to your remote

\gitcommand{git push [<remote>] }

* Transfer local commits of the **current** branch to a remote.
     - push to `origin` by default, assuming the current branch is tracked

. . .

\vspace*{-0.5em}\toyou

\columnsbegin{.37\textwidth}

~~~bash
$> cd /tmp/fork
$> git remote
origin
upstream
$> touch new-file
$> git add new-file
$> git commit -m "add"
~~~

\column{.63\textwidth}

~~~bash
$> git push
Counting objects: 10, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (10/10), done.
Total 10 (delta 4), reused 0 (delta 0)
To git@github.com:<yourlogin>/documents.git
   671eb88..c798919  devel -> devel
~~~

\columnsend


### Pulling from remotes

\gitcommand{git pull [---rebase] [<remote>] \hfill\textit{\# ---rebase = DANGER!}}

* fetch all commits from the remote **and** merge (or rebase)
    - allows for easy to use, equivalent to the _advanced_ alternative:
\begin{cmdline}~\\
\cmdlineentry{git fetch [<remote>]}\\
\cmdlineentry{git merge <remote>/<branch> \hfill\textit{\# 'git rebase' if ---rebase}}\\[1em]
\end{cmdline}
	- `fetch`: allows for inspection and manual merging of remote changes

. . .

\vspace*{-1em}\toyou

~~~bash
$> cd /tmp/tutorials
$> git pull       # OR git up
Updating ae97dae..06576e0
[...]
2 files changed, 4 insertions(+), 5 deletions(-)
~~~

### Publish a (local) branch on a remote

\gitcommand{git push -u origin <branch>}

\gitcommand{git flow feature publish <name>}

. . .

* If you want to **\alert{delete}** a **remote** branch

\gitcommand{git push origin ---delete <branch> \hfill\textit{\# DANGER!}}

. . .

\vspace*{-1em}
\toyou

\columnsbegin{.5\textwidth}

~~~bash
$> cd /tmp/fork
$> git flow feature start toto
$> git flow feature publish toto
~~~

\column{.5\textwidth}

~~~bash
$> git branch -a
$> git push origin --delete \
      feature/toto
~~~

\columnsend


### Putting it all together

\begin{flushleft}
\transientimg{+}{scale=0.34}{remote-workflow-01.pdf}
\transientimg{+}{scale=0.34}{remote-workflow-02.pdf}
\transientimg{+}{scale=0.34}{remote-workflow-03.pdf}
\transientimg{+}{scale=0.34}{remote-workflow-04.pdf}
\transientimg{+}{scale=0.34}{remote-workflow-05.pdf}
\transientimg{+}{scale=0.34}{remote-workflow-06.pdf}
\end{flushleft}

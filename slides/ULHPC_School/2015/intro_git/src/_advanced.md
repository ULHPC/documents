# Advanced Topics

## Submodules

### Git Submodules

\gitcommand{git submodule add [-b <branch>] <url> <subdir>}


* _Git submodule_: repository nested within another repository.
    - see it as a read-only snapshot
	- make symbolic links to the submodules files
* State saved in `.gitmodules` (git root directory)

~~~ini
[submodule ".submodules/Makefiles"]
	path = .submodules/Makefiles
	url = https://github.com/Falkor/Makefiles
~~~

* Explicit initialization is _mandatory_
    - **before** cloning \hfill _`git clone --recursive`_
	- **after** cloning \hfill _`git submodule init && git submodule update`_

### Git Submodules - Update

~~~bash
$> git submodule add \
       https://github.com/Falkor/Makefiles .submodules/Makefiles
~~~

* You might need to _update_ the submodules after `fetch` / `pull`
* You might wish to _upgrade_ the submodules to the latest version

~~~bash
$> git submodule init
$> git submodule update
$> git submodule foreach \
     'git fetch origin; \
      git checkout $(git rev-parse --abbrev-ref HEAD); \
	  git reset --hard origin/$(git rev-parse --abbrev-ref HEAD); \
	  git submodule update --recursive; git clean -dfx'
~~~

* See `make upgrade` of [this Makefile for repositories](https://github.com/Falkor/Makefiles/blob/devel/repo/Makefile)

## More Cool stuff

### Other Cool Stuff

\vspace*{-1em}
\columnsbegin{.6\textwidth}

\bbegin{Stashing}

* Move changes to a separate "stash".

\bend

\bbegin{Interactive Rebase}

\begin{cmdline}
\cmdlineentry{git rebase -i <branch>}
\end{cmdline}

\bend

\column{.4\textwidth}

~~~bash
$> git stash
$> git stash pop
$> git stash list
$> git stash apply
$> git stash drop
$> git stash clear
~~~

\columnsend
\vspace*{-1em}

. . .

* _Git hooks_:
    - Located in `.git/hooks/`
    - scripts run at various stages of Git operation
	- useful to perform lint actions for instance before pushing 

# Advanced Topics

## Submodules and Subtrees

### Using sub-projects

* ou need to use another project from within it


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



### Git subtree









## Rebasing

### Rebasing

\gitcommand{git rebase <branch> \hfill\textit{\# DANGER! Rewrites the tree}}

\vbegin{1-2}

* Basic (_3-ways_) merging via `git merge` creates a new commit

\vend
\vbegin{3-}

* _Rebasing_: **Linear** alternative to merging
	- create a patch of the introduced change (in C4)
	- reapply it on top (of C3) to create C4'

\vspace*{-2.2em}
	
\vend

\vspace*{-3em}

\cbegin{0.5\textwidth}

\transientimg{1,3}{scale=0.4}{rebase-0}
\transientimg{2}{scale=0.4}{rebase-1}
\transientimg{4}{scale=0.4}{rebase-2}
\transientimg{5}{scale=0.4}{rebase-3}

\column{0.5\textwidth}

\vspace{3em}
\begin{cmdline}
\only<1-2>{\promptline{(master)}{git merge experiment}}
\only<4>{\promptline{(master)}{git checkout experiment}\\
\promptline{(experiment)}{git rebase master}
}
\only<5>{\promptline{(experiment)}{git checkout master}\\
\promptline{(master)}{git merge experiment}
}

\end{cmdline}

\cend

### Rebasing (left) vs. Merging (right)

\includegraphics[width=0.5\textwidth]{rebase-3}
\includegraphics[width=0.5\textwidth]{rebase-1}

* Rebasing ensure your commits apply cleanly on a (remote) branch

\wbegin{}\centering

**\alert{Never rebase published code!}**

\wend


## More Cool stuff

### Shell Integration

* [Git Completion](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion) -- [Git flow completion](https://github.com/bobthecow/git-flow-completion)

\vspace{-1em}
\bbegin{Colored PS1}

* bash: integrate `__git_ps1()` function in your `PS1` variable 
     - normally part of the `bash-completion` package
	 - See integration in the [`ULHPC/dotfiles`](https://github.com/ULHPC/dotfiles/blob/master/bash/bashrc) repository	 
	 \cmd{export GIT\_PS1\_SHOWDIRTYSTATE=1 \hfill \textit{\# you probably want that}}

* zsh: [agnoster theme](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/agnoster.zsh-theme) / [powerline](https://github.com/milkbikis/powerline-shell)
     - [Mac OS instructions](http://www.dotnet-rocks.com/2015/05/07/setting-up-iterm2-with-oh-my-zsh-and-powerline-on-osx/)

\bend

\tiny

* On _CentOS/Redhat_, you have to source the correct file
\cmd{ln -s /usr/share/git-core/contrib/completion/git-prompt.sh  /etc/profile.d/}




### Shell Integration





### External Merge and Diff Tools

* Git offers visual diff/merge tools, assuming you configured it
\cmd{git config ---global merge.tool <tool>}


\gitcommand{git difftool [<commit>] \hfill\textit{diff GUI}}

. . .

\gitcommand{git mergetool [<path>...] \hfill\textit{\# resolving merge conflicts}}

. . .

* You can set up **another** graphical merge-conflict-resolution tool
    - _Mac OS_: \hfill `git config --global merge.tool opendiff`
	- _Linux_:  \hfill `git config --global merge.tool kdiff3`
    - Cross-platform: [P4Merge](http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools) ([download](http://www.perforce.com/downloads/helix#product-10))

\begin{cmdline}
\cmdlineentry{brew cask install p4merge  \textit{\# on Mac OS, using \href{http://mxcl.github.com/homebrew/}{Homebrew} and \href{http://caskroom.io/}{Cask}}}
\end{cmdline}




### Using [P4Merge](http://www.perforce.com/product/components/perforce-visual-merge-and-diff-tools) as diff/merge tool



	 
~~~bash
$> apt-get install
$> brew cask install p4merge     # on Mac OS, using \href{http://mxcl.github.com/homebrew/}{Homebrew} and \href{http://caskroom.io/}{Cask}


~~~



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

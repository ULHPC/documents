# Collaborating / Working together

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

* Useful upon a forked repository, to set a new `upstream` remote
\begin{cmdline}
\cmdlineentry{git remote add upstream }\\
\cmdlineentry{git diff HEAD\^}\\
\end{cmdline}


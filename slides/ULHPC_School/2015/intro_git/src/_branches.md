# Branching and Merging

### Data Model

\columnsbegin{.4\textwidth}

\includegraphics[width=1.2\textwidth]{data_model}

\column{.65\textwidth}

* **Immutable** objects
    - _Blob_: File content
    - _Tree_: Directory List
	- _Commit_: Pointer to a snapshot / tree
	- _Tag_: Pointer to commit
* _Git Branch_: Lighweight, movable pointer to a commit (`HEAD`: current branch)

\centering\includegraphics[width=0.4\textwidth]{data_model_simplified}

\columnsend



### Data Model Example

\begin{flushleft}
  \only<1-8>{\vspace*{-3.5em}}
  \only<9->{\vspace*{-2.25em}}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-101}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-102}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-103}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-104}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-105}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-106}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-107}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-107}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-108}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-109}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-110}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-111}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-112}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-113}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-114}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-115}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-116}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-117}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-118}
  \transientimg{+}{height=0.95\textheight}{delta_vs_snapshot_example-119}
\end{flushleft}

### Branching

\gitcommand{git branch <name> \hfill\textit{\# create a branch <name>}}

. . . 

\gitcommand{git branch -d <name> \hfill\textit{\# delete the branch <name>}}

\vbegin{2}

* use `-D` instead of `-d` to force deletion

\vend

. . .

\gitcommand{git branch [-a] \hfill\textit{\# List [all] the branches}}

. . .

\gitcommand{git checkout [-b] <name> \hfill\textit{\# swicth to the branch <name>}}

\vbegin{4}

* `-b`: create the branch before switching 
* changes commited through `git commit` are committed to `HEAD`

\vend

. . .

\wbegin{}

* __\alert{Switching}__ branches __\alert{changes}__ the files in your Working directory
    - since you change the `HEAD` snapshot... 

\wend

### Tags

\gitcommand{git tag [-s] <name> [-m 'msg']}

* `-s`: GPG-signed tag, assuming you have configured your signing key
\begin{cmdline} % Obliged to triple '-' for seeing two
  \cmdlineentry{git config ---global user.signingkey 0xDD01D5C1}
\end{cmdline}

. . .

\toyou

### Branch and Tags Hands-on

~~~bash
$> cd /tmp/firstproject
$> git branch
* master
$> git tag v1.0 -m 'first tag'
$> git gr
* f31c173 (HEAD -> master, tag: v1.0) a first move with amend
* ee60f53 add README
$> git branch testing
$> git checkout testing   # Move to the 'testing' branch
$> echo 'testing' >> README.md && git commit -a -m "testing 1"
[testing 7afa96d] testing 1
 1 file changed, 1 insertion(+)
$> git checkout master   # return to 'master'
$> echo 'master' >> README.md && git commit -a -m "master"
[master 72d4d5f] master
 1 file changed, 1 insertion(+)
$> git gr
$> gitx   # or gitk
~~~






### Daily Branching Example

\begin{cmdline} % Obliged to triple '-' for seeing two
\only<3>{\promptline{(master)}{git branch testing \hfill\textit{\# create a branch named 'testing'}}}
\only<4>{\promptline{(master)}{git checkout testing \hfill\textit{\# switch to the 'testing' branch}}}
\only<5>{\promptline{(testing)}{vim README.md \hfill\textit{\# make some edits...}}\\
\promptline{(testing)}{git commit -a -m "made a change"  \hfill\textit{\# and commit them}}}
\only<6>{\promptline{(testing)}{git checkout master \hfill\textit{\# switch back to 'master' branch}}}
\only<7>{\promptline{(testing)}{vim README.md \hfill\textit{\# make some edits}}\\
\promptline{(testing)}{git commit -a -m "intro"  \hfill\textit{\# introduce divergence!}}}
\end{cmdline}

\begin{flushleft}
  \only<5>{\vspace{-0.85em}}
  \only<7>{\vspace*{-2em}}
  \only<1>{\includegraphics [height=0.8\textheight]{branch-00.pdf}}
  \only<2>{\includegraphics [height=0.8\textheight]{branch-01.pdf}}
  \only<3>{\includegraphics [height=0.8\textheight]{branch-02.pdf}}
  \only<4>{\includegraphics [height=0.8\textheight]{branch-03.pdf}}
  \only<5>{\includegraphics [height=0.8\textheight]{branch-04.pdf}}
  \only<6>{\includegraphics [height=0.8\textheight]{branch-05.pdf}}
  \only<7>{\includegraphics [height=0.8\textheight]{branch-06.pdf}}
\end{flushleft}

### Diverging / Converging (Fork-Join)

\columnsbegin{.6\textwidth}\footnotesize

\bbegin{Diverging}

* Changes are committed into two branches independently
    - Then the branches _diverge_

\bend

\column{.4\textwidth}

\includegraphics [height=0.4\textheight]{branch-07.pdf}

\columnsend

. . .

\wbegin{Converging to join branches}

1. \alert{\texttt{merge}} (if possible in _fast-forward_ mode)
2. \alert{\texttt{rebase}}

\wend

### Merging

\gitcommand{git merge [---no-ff] <branch>}

\begin{cmdline} % Obliged to triple '-' for seeing two
\
\end{cmdline}

\vspace{-2.5em}
\columnsbegin{.6\textwidth}\footnotesize

* Different auto-merge strategies
    - _fast-forward_ (if possible)
	- _3-ways_ (regular)
* Usually painless ;)

\column{.4\textwidth}

\vbegin{1}

\includegraphics[width=0.75\textwidth]{meme_merge.png}

\vend

\vbegin{2-}

~~~bash
<<<<<<< HEAD
master
=======
testing
>>>>>>> testing
~~~

\vend

\columnsend

. . .

####

* _In case of conflicts_:
    - Resolve the conflicts manually \hfill _`vim`_ / _`emacs`_ / _`subl`_ ...
        * check for the sequence `<<<` in the text
    - then mark as resolved  \hfill _`git add <file>`_
    - and trigger the merge commit \hfill _`git commit`_



### Daily Branching Example

\begin{cmdline} % Obliged to triple '-' for seeing two
\only<2>{\promptline{(master)}{git checkout -b hotfix \hfill\textit{\# create and switch to 'hotfix'}}\\
\promptline{(hotfix)}{vim test.rb \hfill\textit{\# make some edits...}}\\
\promptline{(hotfix)}{git commit -a -m "hotfix"  \hfill\textit{\# and commit them}}

}
\only<3>{\promptline{(hotfix)}{git checkout master  \hfill\textit{\# swicth back to 'master' branch}}}
\only<4-5>{\promptline{(master)}{git merge hotfix \hfill\textit{\# merge the 'hotfix' branch (\emph{fast-forward})}}}
\only<7-8>{\promptline{(master)}{git branch -d hotfix \hfill\textit{\# delete the (useless) 'hotfix' branch}}}
\only<10->{\promptline{(master)}{git merge testing \hfill\textit{\# merge the 'testing' branch (\emph{3-ways})}}}
\end{cmdline}


\begin{flushleft}
\only<2>{\vspace{-1.35em}}
\transientimg{+}{height=0.7\textheight}{branch-07.pdf}
\transientimg{+}{height=0.7\textheight}{branch-08.pdf}
\transientimg{+}{height=0.7\textheight}{branch-09.pdf}
\transientimg{+}{height=0.7\textheight}{branch-10.pdf}
\transientimg{+}{height=0.7\textheight}{branch-11.pdf}
\transientimg{+}{height=0.7\textheight}{branch-12.pdf}
\transientimg{+}{height=0.7\textheight}{branch-13.pdf}
\transientimg{+}{height=0.7\textheight}{branch-14.pdf}
\transientimg{+}{height=0.7\textheight}{branch-15.pdf}
\transientimg{+}{height=0.7\textheight}{branch-16.pdf}
\transientimg{+}{height=0.7\textheight}{branch-17.pdf}
\transientimg{+}{height=0.7\textheight}{branch-18.pdf}
\end{flushleft}

### Merging and solving conflicts Hands-on

\vbegin{1}

\toyou

\vend

\vbegin{2}

~~~bash
$> cd /tmp/firstproject
$> git checkout master
Switched to branch 'master'
$> git checkout -b hotfix
Switched to a new branch 'hotfix'
$> touch test.rb && git add test.rb && git commit -m "hotfix"
[hotfix ac188bd] hotfix
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 test.rb
$> git checkout master
Switched to branch 'master' 
$> git gr
* 72d4d5f (HEAD -> master) master
* f31c173 (tag: v1.0) a first move with amend
* ee60f53 add README
~~~

\vend

\vbegin{3}

* Fast-Forward Merge

~~~bash
$> git merge hotfix
Updating 72d4d5f..ac188bd
Fast-forward
 test.rb | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 test.rb
$> git gr
* ac188bd (HEAD -> master, hotfix) hotfix
* 72d4d5f master
* f31c173 (tag: v1.0) a first move with amend
* ee60f53 add README 
~~~

~~~bash
$> git branch -d hotfix
Deleted branch hotfix (was ac188bd)
~~~

\vend

\vbegin{4}

* Solving conflicts

~~~bash
$> git merge testing
CONFLICT (content): Merge conflict in README.md
Automatic merge failed; fix conflicts and then commit the result.
$> cat README.md
<<<<<<< HEAD
master
=======
testing
>>>>>>> testing
$> vim README.md   # Edit to solve the conflicts 
$> cat README.md
master corrected
~~~

\vend

\vbegin{5}

* Solving conflicts

~~~bash
$> git status    # OR git st
On branch master
You have unmerged paths.

Unmerged paths:
	both modified:   README.md

no changes added to commit
~~~

\vend

\vbegin{6}

* Solving conflicts and 3-way merge

~~~bash
$> git add README.md    # Mark as corrected / conflict solved
$> git commit
Recorded resolution for 'README.md'.
[master ef299b7] Merge branch 'testing'
$> git gr
*   ef299b7 (HEAD -> master) Merge branch 'testing'
|\
| * 7afa96d (testing) testing 1
* | ac188bd hotfix
* | 72d4d5f master
|/
* f31c173 (tag: v1.0) a first move with amend
* ee60f53 add README
~~~

\vend

### Branching Workflow

\begin{center}
\transientimg{+}{width=0.9\textwidth}{branch-development-01.pdf}
\transientimg{+}{width=0.9\textwidth}{branch-development-02.pdf}
\transientimg{+}{width=\textwidth}{branch-development-03.pdf}
\end{center}

### [Git-flow](https://github.com/nvie/gitflow) to the rescue

\hfill\myurl{http://nvie.com/posts/a-successful-git-branching-model/}

\gitcommand{git flow init}

\gitcommand{git flow feature \{ start, publish, finish \}  <name>}

\gitcommand{git flow release \{ start, publish, finish \}  <version>}

* Ensure two long running branches
    - `production` : the stable branch
        * ideally holding _only_ tags of the successive releases
    - `master` / `devel`: the _main_ branch where the developments occurs
* On demand: make a new feature branch `feature/<name>`
* From time to time, release your code into `production` and tag 

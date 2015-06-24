# Branching and Merging

### Data Model

\columnsbegin{.4\textwidth}

\includegraphics[width=1.2\textwidth]{data_model}

\column{.65\textwidth}

* **Immutable** objects in rounded cornered boxes
    - _Blob_: File content
    - _Tree_: Directory List
	- _Commit_: Pointer to a snapshot / tree
	- _Tag_: as above

\columnsend

### Data Model Example

\begin{flushleft}
  \only<1-7>{\vspace*{-3.5em}}
  \only<8->{\vspace*{-2.25em}}
  \only<1>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-101.pdf}}
  \only<2>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-102.pdf}}
  \only<3>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-103.pdf}}
  \only<4>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-104.pdf}}
  \only<5>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-105.pdf}}
  \only<6>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-106.pdf}}
  \only<7>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-107.pdf}}
  \only<8>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-108.pdf}}
  \only<9>{\includegraphics [height=0.95\textheight]{delta_vs_snapshot_example-109.pdf}}
  \only<10>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-110.pdf}}
  \only<11>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-111.pdf}}
  \only<12>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-112.pdf}}
  \only<13>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-113.pdf}}
  \only<14>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-114.pdf}}
  \only<15>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-115.pdf}}
  \only<16>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-116.pdf}}
  \only<17>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-117.pdf}}
  \only<18>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-118.pdf}}
  \only<19>{\includegraphics[height=0.95\textheight]{delta_vs_snapshot_example-119.pdf}}
\end{flushleft}


### Branching

\columnsbegin{.4\textwidth}

\includegraphics[width=\textwidth]{data_model_simplified}

\column{.6\textwidth}

\bbegin{Git Branch}

* Lighweight, movable pointer to a commit
    - `HEAD`: current branch 

\bend

\columnsend


### Branch Commands

\gitcommand{git branch <name> \hfill\textit{\# create a branch <name>}}

. . . 

\gitcommand{git branch [-a] \hfill\textit{\# List [all] the branches}}

. . .

\gitcommand{git checkout [-b] <name> \hfill\textit{\# swicth to the branch <name>}}

* `-b`: create the branch before switching 
* changes commited through `git commit` are committed to `HEAD`







### Tags

\gitcommand{git tag [-s] <name> [-m 'msg']}

* `-s`: GPG-signed tag, assuming you have configured your signing key
\begin{cmdline} % Obliged to triple '-' for seeing two
  \cmdlineentry{git config ---global user.signingkey 0xDD01D5C1}
\end{cmdline}

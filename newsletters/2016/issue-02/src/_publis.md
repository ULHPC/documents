\begin{figure}
    \centering \includegraphics[width=0.95\textwidth]{rb_ranking.png}
    \caption{Example heat map from CloudCom'15 conference paper by S. Wagele et al. \cite{WGBB_CLOUDCOM15}}
    \label{fig:cloudcom15}
\end{figure}

__UL HPC big data ranking records__  

In the context of the ongoing GDRI-Algodec "Algorithmic Decision Theory" supported by the CNRS and The FNR, Prof. R. Bisdorff is developing multicriteria ranking algorithms for large sets of potential decision alternatives: up to several thousand of alternatives evaluated on multiple incommensurable ordinal performance criteria.  
This research is motivated by the development of a visualization tool - a *heat map* - for performance tables showing the decision alternatives linearly ordered form the best to the worst, and the individual performances colored by quantiles equivalence classes (see Fig.\ref{fig:cloudcom15}).

By using Python3.5 multiprocessing resources and the Digraph3 multicriteria software library \cite{RB_Digraph3}, it is possible, on the gaia-80 machine using 120 single threaded cores and  1.5 TB of memory, to linearly rank (without ties) in less than an hour a huge set of 250000 alternatives evaluated on 21 performance criteria by balancing economic, ecological and societal decision objectives. Data input is, on the one side, a 250000x21 performance tableau of 825 MB, and on the other side, a theoretical outranking space consisting of 62 000 000 000 (billions) of pairwise comparisons. A "small" set of 1000 decision alternatives, in a similar setting, may thus be ranked typically in less than 5 seconds.

\begin{thebibliography}{1}
\bibitem{WGBB_CLOUDCOM15}
S.~Wagle, M.~Guzek, P.~Bouvry, R.~Bisdorff.
\newblock {An Evaluation Model for Selecting Cloud Services from Commercially Available Cloud Providers}.
\newblock In {\em Proc. of the 7th IEEE International Conference on Cloud Computing Technology and Science (CloudCom 2015)}, Vancouver, Canada, December 2015.

\bibitem{RB_Digraph3}
R.~Bisdorff.
\newblock {Tutorials and documentation of the Digraph3 resources - \url{http://leopold-loewenheim.uni.lu/docDigraph3/tutorial.html}}
\newblock {2014 FSTC/ILIAS Decision Systems Group, University of Luxembourg}

\end{thebibliography}

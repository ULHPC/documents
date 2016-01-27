\begin{figure}
    \centering \includegraphics[width=0.95\textwidth]{rb_ranking.png}
    \vspace{-2ex}
    \caption*{Example heat map from CloudCom'15 conference paper by S. Wagele et al. \cite{WGBB_CLOUDCOM15}}
    \label{fig:rbisdorff}
\end{figure}

__UL HPC big data ranking records__  

In the context of the ongoing GDRI-Algodec "Algorithmic Decision Theory" supported by the CNRS and The FNR, Prof. R. Bisdorff is developing multicriteria ranking algorithms for large sets of potential decision alternatives: up to several thousand of alternatives evaluated on multiple incommensurable ordinal performance criteria.  
This research is motivated by the development of a visualization tool - a *heat map* - for performance tables showing the decision alternatives linearly ordered form the best to the worst, and the individual performances colored by quantiles equivalence classes.
By using Python3.5 multiprocessing resources and the Digraph3 multicriteria software library \cite{RB_Digraph3}, it is possible, on the ULHPC gaia-80 machine using 120 single threaded cores and 1.5 TB of memory, to linearly rank (without ties) in less than an hour a huge set of 250000 alternatives evaluated on 21 performance criteria by balancing economic, ecological and societal decision objectives. Data input is, on the one side, a 250000x21 performance tableau of 825 MB, and on the other side, a theoretical outranking space consisting of 62 000 000 000 (billions) of pairwise comparisons. A "small" set of 1000 decision alternatives, in a similar setting, may thus be ranked typically in less than 5 seconds.

\begin{figure}[h]
    \begin{subfigure}[b]{0.5\textwidth}
	\includegraphics[width=\textwidth]{luxdem_snow_tire.jpg}
   	\caption*{Snow-tire interaction - \href{http://luxdem.uni.lu}{LuXDEM} \cite{bpeters}}
	\label{fig:bpeters}
    \end{subfigure}
    ~   
    \begin{subfigure}[b]{0.5\textwidth}
	\centering \includegraphics[width=0.75\textwidth]{jberryman_atomistic_dna.png}
	\caption*{Atomistic DNA in High Salt - \href{http://wwwen.uni.lu/research/fstc/physics_and_materials_science_research_unit}{PhyMS} \cite{jberryman}}
	\label{fig:jberryman}
    \end{subfigure}
\end{figure}
\begin{figure}[h]
    \begin{subfigure}[b]{0.5\textwidth}
    	\includegraphics[width=\textwidth]{snielsen_inverse_protein_folding.png}
	\caption*{Evolutionary Algorithms for the Inverse Protein Folding Problem - \href{http://pcog.uni.lu}{PCOG} / \href{http://wwwen.uni.lu/lcsb}{LCSB} \cite{snielsen}}
	\label{fig:snielsen}
    \end{subfigure}
    ~   
    \begin{subfigure}[b]{0.5\textwidth}
    	\includegraphics[width=\textwidth]{ekieffer_multilevel_uav_swarm.png}
	\caption*{Multi-Level UAV Swarm simulation - \href{http://snt.uni.lu}{SnT}}
	\label{fig:ekieffer}
    \end{subfigure}
\end{figure}

\begin{thebibliography}{1}
\bibitem{WGBB_CLOUDCOM15}
S.~Wagle, M.~Guzek, P.~Bouvry, R.~Bisdorff.
\newblock {An Evaluation Model for Selecting Cloud Services from Commercially Available Cloud Providers}.
\newblock In {\em Proc. of the 7th IEEE International Conference on Cloud Computing Technology and Science (CloudCom 2015)}, Vancouver, Canada, December 2015.

\bibitem{RB_Digraph3}
R.~Bisdorff.
\newblock {Tutorials and documentation of the Digraph3 resources - \url{http://leopold-loewenheim.uni.lu/docDigraph3/tutorial.html}}
\newblock {2014 FSTC/ILIAS Decision Systems Group, University of Luxembourg}

\bibitem{bpeters}
M. Michael, F. Vogel, B.~Peters.
\newblock {DEM-FEM coupling simulations of the interactions between a tire tread and granular terrain}
\newblock {\em J. Comput. Methods Appl. Mech. Engrg. 2015.}

\bibitem{jberryman}
J.~Berryman, T.~Schilling.
\newblock {A GPS Navigator for the Free Energy Landscape, Used to Find the Chirality-Switching Salt Concentration of DNA}
\newblock {\em J. Chem. Theory Comput. 2013.}

\bibitem{snielsen}
S.~Nielsen, G.~Danoy, W.~Jurkowski, J.~L.~J.~Laredo, R.~Schneider, E.-G.~Talbi, P.~ Bouvry.
\newblock {A Novel Multi-objectivisation Approach for Optimising the Protein Inverse Folding Problem}
\newblock In {\em Proc. of the 18th European Conference on Applications of Evolutionary Computation (EvoApplications 2015)}, Springer I.P., 2015.

\end{thebibliography}

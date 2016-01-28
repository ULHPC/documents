__UL HPC big data ranking records__  

In the context of the ongoing [GDRI-Algodec](http://www.algodec.org) _Algorithmic Decision Theory_ supported by the [CNRS](http://www.cnrs.fr) and the [FNR](http://www.fnr.lu), Prof. R. Bisdorff is developing multicriteria ranking algorithms for large sets of potential decision alternatives: up to several thousand of alternatives evaluated on multiple incommensurable ordinal performance criteria.  
This research is motivated by the development of a visualization tool - a *heat map* - for performance tables showing the decision alternatives linearly ordered form the best to the worst, and the individual performances colored by quantiles equivalence classes.

\begin{wrapfigure}[13]{r}{0.6\textwidth}
    \centering \includegraphics[width=0.6\textwidth]{rb_ranking.png}
    \vspace{-4ex}
    \caption*{\footnotesize Heat map example \cite{WGBB_CLOUDCOM15}}
    \label{fig:rbisdorff}
    \vspace{-4ex}
\end{wrapfigure}

By using Python3.5 multiprocessing resources and the [Digraph3](http://leopold-loewenheim.uni.lu/docDigraph3/tutorial.html) multicriteria software library, it is possible, on the ULHPC [gaia-80](https://hpc.uni.lu/systems/gaia/#computing-capacity) machine using 120 single threaded cores and 1.5 TB of memory, to linearly rank (without ties) in less than an hour a huge set of 250000 alternatives evaluated on 21 performance criteria by balancing economic, ecological and societal decision objectives. Data input is, on the one side, a 250000x21 performance tableau of 825 MB, and on the other side, a theoretical outranking space consisting of 62 000 000 000 (billions) of pairwise comparisons. A "small" set of 1000 decision alternatives, in a similar setting, may thus be ranked typically in less than 5 seconds.

\begin{wrapfigure}[14]{l}{0.5\textwidth}
  \vspace{-2ex}
  \includegraphics[width=0.5\textwidth]{luxdem_snow_tire.jpg}
  \caption*{\footnotesize Snow-tire interaction - \href{http://luxdem.uni.lu}{LuXDEM} \cite{bpeters}}
  \label{fig:bpeters}
\end{wrapfigure}

The [LuXDEM](http://luxdem.uni.lu) research group is developing simulation approaches that can describe the interaction of a tire surface on a snow-covered road. In order to predict the viscoelastic deformation of the tire when it comes into contact with snow a Finite Element analysis is applied. The coupling between the discrete approach to characterize snow and the FEM approach for the tire represents an accurate model to assess the traction. The predicted results obtained by the simulation tool are compared to experimental data for validation.

\begin{wrapfigure}[14]{r}{0.5\textwidth}
  \vspace{-2ex}
  \centering \includegraphics[width=0.35\textwidth]{jberryman_atomistic_dna.png}
  \caption*{\footnotesize Atomistic DNA in High Salt - \href{http://wwwen.uni.lu/research/fstc/physics_and_materials_science_research_unit}{PhyMS} \cite{jberryman}}
  \label{fig:jberryman}
\end{wrapfigure}

&nbsp;

The [Soft Matter Theory](http://softmattertheory.uni.lu) research group is performing calculations of absolute free energies of biomolecules, using a combination of the well-known Einstein Molecule method (for treating the solute) with a conceptually related method of recent genesis for computing free energies of liquids (to treat the solvent and counterions). The approach is based on thermodynamic integration from a detailed atomistic model to one which is simplified but analytically solvable, thereby giving the absolute free energy as that of the tractable model plus a correction term found numerically.

\begin{wrapfigure}[12]{l}{0.5\textwidth}
  \vspace{-6ex}
  \includegraphics[width=0.5\textwidth]{snielsen_inverse_protein_folding.png}
  \caption*{\footnotesize Evolutionary Algorithms for the Inverse Protein Folding Problem - \href{http://pcog.uni.lu}{PCOG} / \href{http://wwwen.uni.lu/lcsb}{LCSB} \cite{snielsen}}
  \label{fig:snielsen}
\end{wrapfigure}

Protein structure prediction is an essential step in understanding the molecular mechanisms of living cells, with widespread application in biotechnology and health.
The Inverse Folding Problem (IFP) of finding sequences that fold into a defined structure, an important research problem at the heart of rational protein design, is being tackled at the [PCO Group](http://pcog.uni.lu) in partnership with the [LCSB]({http://wwwen.uni.lu/lcsb).

\begin{wrapfigure}[12]{r}{0.5\textwidth}
  \vspace{-2ex}
  \includegraphics[width=0.5\textwidth]{ekieffer_multilevel_uav_swarm.png}
  \caption*{Multi-Level UAV Swarm simulation - \href{http://snt.uni.lu}{SnT}}
  \label{fig:ekieffer}
\end{wrapfigure}

&nbsp;

&nbsp;

&nbsp;

A multi-level UAV swarm simulator is under development at the [SnT](http://snt.uni.lu), with the objective of tackling three real application scenarios: surveillance, acquisition and tracking. The cooperation between levels is a new approach which allows to compensate weaknesses of a single level of swarms by taking advantage of the abilities of each level. The core of this simulator is based on Game Theoretical aspects and co-evolutionary optimization algorithms.


\begin{thebibliography}{1}
    \bibitem{WGBB_CLOUDCOM15}
    S.~Wagle, M.~Guzek, P.~Bouvry, R.~Bisdorff.
    \newblock {An Evaluation Model for Selecting Cloud Services from Commercially Available Cloud Providers}.
    \newblock In {\em Proc. of the 7th IEEE International Conference on Cloud Computing Technology and Science (CloudCom 2015)}, Vancouver, Canada, December 2015.

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

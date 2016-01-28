## New Computing HW

\begin{table}[b]
  \centering
  \setlength{\tabcolsep}{0.5em}
  \renewcommand{\arraystretch}{1.1}
  \scriptsize
  \begin{tabular}{|r||c|c|c|}
    \rowcolor{lightgray} 
    \hline
    \textbf{Computing class} & \textbf{System type} & \textbf{Size} & \textbf{Computing capabilities} \\ \hline \hline
    Large memory system   & Delta D88x-M8-BI           & 1    & 2.4 TFlops / 3 TB RAM         \\
    Large memory system   & SGI  UV-2000               & 1    & 3 TFlops / 4 TB RAM           \\
    General purpose HPC   & Dell FX2s/FC430            & 24   & 23.04 TFlops / 3 TB RAM       \\
    Big Data analytics    & HP Moonshot 1500/m710      & 90   & 10.39 TFlops / 2.8 TB RAM     \\
    Accelerator systems   & Dell C4130 (Tesla K80 GPU) & 4 (+16) & 46.56 + 3.84 TFlops (GPU+CPU) \\
    Accelerator upgrade   & NVIDIA Tesla K40m GPU     & 10       & 11.7 TFlops (GPU)          \\\hline
    \multicolumn{2}{r}{\textbf{Total computing additions:}} & \multicolumn{1}{c}{\textbf{120 (+26 GPU)}} & \multicolumn{1}{c}{\textbf{100.93 TFlops}} \\\hline
  \end{tabular}
\end{table}

2015 has seen several increases of the computing capacity of the [UL HPC](http://hpc.uni.lu) platform with several additions to the [Gaia](https://hpc.uni.lu/systems/gaia/) cluster which __more than doubled its computing power__.

\clearpage

\begin{figure}[h]
    \begin{subfigure}[b]{0.5\textwidth}
        \includegraphics[width=\textwidth]{pics/2016/delta.jpg}
        \caption*{Large memory (3 and 4 TB RAM) Delta system (above, dedicated to the \RUES\ research unit) and SGI UV 2000 (right, dedicated to \LCSB) allowing in-memory processing of huge datasets.}
        \vspace{1.5ex}
    \end{subfigure}
    ~
    \begin{subfigure}[b]{0.49\textwidth}
    \includegraphics[width=\textwidth]{pics/2016/sgi.jpg}
	\vspace{0.6ex}
    \end{subfigure}
\end{figure}

<!-- Two big SMP systems from [Delta Computer](https://www.deltacomputer.com/) and [SGI](http://www.sgi.com/), dedicated to the [RUES](http://wwwfr.uni.lu/research/fstc/research_unit_in_engineering_science_rues) research unit for Computational Mechanics workloads, and respectively to [LCSB](http://lcsb.uni.lu) interdisciplinary centre, for Bioinformatics research. -->
<!-- The large amount of memory available on these systems (3 and 4 TB RAM) enable in-memory processing of huge datasets, making possible amazing analyses and simulations. -->

\vspace*{-1em}
\begin{wrapfigure}[11]{l}{0.45\textwidth}
  \vspace{-3ex}
  \includegraphics[width=0.45\textwidth]{pics/2016/fx2.jpg}
\end{wrapfigure}

Three ultra-dense Dell FX2s enclosures (left) with state-of-the-art HPC computing systems featuring [Haswell](https://en.wikipedia.org/wiki/Haswell_(microarchitecture)) processors, <!-- which double the maximum amount of floating-point operations possible, -->
highly improve the time to solution of tightly coupled calculations of the \PHYMS\ research unit.
Scalable software such as CP2K, ABINIT, QuantumESPRESSO, YAMBO, VASP and many others are able to use the performant distributed resources and speed up the computing time.
  
&nbsp;

\begin{wrapfigure}[11]{r}{0.45\textwidth}
  \vspace{-3ex}
  \includegraphics[width=0.45\textwidth]{pics/2016/moonshot.jpg}
\end{wrapfigure}

Two dense, energy efficient enclosures from HP (shown to the right), containing low power high performance processors also based on the Haswell architecture but with the addition of the Crystalwell package (a large 128MB L4 cache) are ideal for a variety of BigData analytics workloads performed by the [LCSB](http://lcsb.uni.lu), the [SnT](http://snt.uni.lu) interdisciplinary centre and economics analyses of the [LSF](http://lsf.uni.lu).
 
&nbsp;
 
&nbsp;
 
&nbsp;
 
\begin{wrapfigure}[8]{l}{0.45\textwidth}
  \vspace{-10ex}
  \includegraphics[width=0.45\textwidth]{pics/2016/c4130.jpg}
\end{wrapfigure}

Complementing the existing pool of GPGPU capable systems are new ultra-dense Dell C4130 GPU nodes containing 16 NVIDIA Tesla K80 accelerators (32 GK210 GPUs), in addition to an upgrade with 10 Tesla K40m cards for the Dell R720 systems. Pictured to the right is one C4130 system with its visible 4 K80 cards.
Many domain specific (e.g. physics: ABINIT, bioinformatics: GROMACS, engineering: Abaqus FEA) and general purpose (e.g. MATLAB) software present on the UL HPC platform  from the new GPU accelerators, resulting in a shorter time-to-solution improving productivity for all research groups of the UL.

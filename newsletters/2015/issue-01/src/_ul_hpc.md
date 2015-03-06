\resizebox{0.9\textwidth}{0.6\textwidth}{
 \centering \begin{tikzpicture}[mindmap, level 1 concept/.append style={level distance=6cm}]
    \begin{scope}[mindmap, concept color=blue!60, text=white]
    \node[concept,text width=14em] (compute) {\textbf{404 computing nodes: 4316 cores, 49.9 TFlops}}
      [clockwise from=75]
      child { node[concept,scale=1.1] (rooms) {\textbf{3 server rooms: 2 in Kirchberg, 1 in Belval}}}
      child { node[concept,scale=1.1] (clusters) {\textbf{4 clusters: 2 production, 2 research}}}
      child { node[concept,scale=1.1] (servers)  {\textbf{147 servers: 37 physical and 110 Virtual Machines}}};
    \end{scope}

    \begin{scope}[mindmap, concept color=green!50!yellow!70!black, text=white]
      \node[concept] (storage) at (8.5,5) {\textbf{1656 TB main storage}}
      [clockwise from=0]
      child { node[concept,scale=1.1] (backup) {\textbf{1712 TB for backup}}};
    \end{scope}
    
    \begin{scope}[mindmap, concept color=red!60, text=white]
      \node[concept] (sysadmins) at (12,0) {\textbf{5 system \\ administrators}}
      [clockwise from=225]
      child { node[concept,scale=1.1,text width=6em] (sysadmindiv) {\textbf{3 at FSTC \& 2 at LCSB}}};
    \end{scope}
    
\end{tikzpicture}}

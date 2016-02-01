## OS/Software Upgrades

As part of our commitment to constantly improve the services offered by the HPC platform,
in 2015 we have performed the most comprehensive software upgrades in the 8 years existence of [UL HPC](https://hpc.uni.lu).

\begin{wrapfigure}[4]{l}{0.05\textwidth}
  \vspace{-2ex}
  \includegraphics[width=0.05\textwidth]{logos/logo_debian.png}
\end{wrapfigure}
\noindent
A staged upgrade of the OS on 280 computing systems from [Debian 6](https://www.debian.org/releases/squeeze/) to [Debian 7](https://www.debian.org/releases/wheezy/) has been done on both Chaos and Gaia clusters.
55 management systems and 101 hosted Virtual Machines have also undergone OS upgrades, allowing for increased stability and uninterrupted security support of these critical systems.

\noindent
The Subnet Manager of [Gaia](https://hpc.uni.lu/systems/gaia/), providing routing across the [InfiniBand](https://en.wikipedia.org/wiki/InfiniBand) fabric, has been configured in redundant mode for increased availability of this high speed network.

\begin{wrapfigure}[3]{l}{0.06\textwidth}
  %\vspace{-2ex}
  \includegraphics[width=0.06\textwidth]{logos/logo_OAR.png}
\end{wrapfigure}
\noindent The databases of the [OAR](https://oar.imag.fr/) Resource and Job Management System on Chaos and Gaia, containing the complete traces of __5 million user jobs__ <!-- (1.45M on Chaos since Feb. 8th, 2008, 3.55M on Gaia - since Dec 21st, 2011)-->, have been migrated from MySQL to PostgreSQL.

\begin{wrapfigure}[3]{r}{0.15\textwidth}
  \vspace{-3ex}
  \includegraphics[width=0.15\textwidth]{logos/logo_easybuild.png}
\end{wrapfigure}
\noindent
The [software environment](http://hpc.uni.lu/users/software/) available through the Environment Modules system has been regenerated for the new underlying OS and embedded in the new [RESIF](http://resif.readthedocs.org/en/latest/) framework.

\begin{wrapfigure}[8]{l}{0.5\textwidth}
  %\vspace{-2ex}
  \includegraphics[width=0.5\textwidth]{pics/2016/xcs-paraview-matlab.png}
\end{wrapfigure}

\noindent
Finally, the [XCS](https://xcs.uni.lux) web portal for visualisation (see left, running remote instances of [ParaView](http://paraview.org) and [Matlab](http://www.mathworks.com/products/matlab)) underwent an upgrade to the latest version available, with improved usability and security. Access to the portal, which uses the Gaia cluster's GPGPUs for 3D acceleration, is available to all UL HPC users upon request.

<!--
\begin{figure}[h]
%\vspace{-3ex}
    \centering.
    \includegraphics[width=0.75\textwidth]{pics/2016/xcs-paraview-matlab.png}
    %\caption*{\small Updated \href{https://xcs.uni.lux}{XCS} visualisation portal running remote instances of \href{http://paraview.org}{ParaView} and \href{http://www.mathworks.com/products/matlab}{Matlab}.}
    \vspace{-3ex}
\end{figure}
-->

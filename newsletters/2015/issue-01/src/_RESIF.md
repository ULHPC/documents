# RESIF: easy management of software environments

[RESIF](http://resif-pypi.readthedocs.org/en/latest/) is an internally developed tool that aims to make the software management on the UL HPC platform more accessible to its users. Its main feature is the automation of the deployment of a new software environment, while also making it easy to add software to an existing stack. The tool can be used both on the HPC platform and users' workstations, making it easy to have local installations of the same software in use on the clusters.

RESIF builds on the [EasyBuild framework](http://hpcugent.github.io/easybuild/) yet does not require an indepth knowlege of it, and provides users a simple workflow allowing:

- easy installation and initialization of RESIF and EasyBuild
- creation of a new software stack
- addition of new software to an existing software stack

The workflow is outlined in the following figure:

\includegraphics[width=\textwidth]{images/RESIFnewsletter.pdf}

The software environment available through the Modules system on the UL HPC platform will be regenerated with RESIF upon completion of the upgrade to Debian 7.
This environment will contain a \texttt{core} set of applications used by the UL research groups and will be organized by theme, making it easy to find and use
the required packages.

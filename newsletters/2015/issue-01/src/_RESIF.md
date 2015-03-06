# RESIF: easy management of software environments

[RESIF](http://resif-pypi.readthedocs.org/en/latest/) is an internally developed tool that aims to make the software management on the UL HPC platform more accessible to its users. Its main feature is the automation of the deployment of a new software environment, while also making it easy to add software to an existing stack. The tool can be used both on the HPC platform and workstations, making it easy for users to have local installations of the same software they use on the clusters.

RESIF builds on the [EasyBuild framework](http://hpcugent.github.io/easybuild/) yet does not require an indepth knowlege of it, and provides users a simple workflow allowing:

- easy installation and initialization of RESIF and EasyBuild
- creation of a new software stack
- addition of new software to an existing software stack

The workflow is outlined in the following figure:

\includegraphics[width=\textwidth]{images/RESIFnewsletter.pdf}

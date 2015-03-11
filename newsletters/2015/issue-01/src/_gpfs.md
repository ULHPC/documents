## New GPFS & Isilon Storage

\begin{tcolorbox}
The main storage system of the Gaia cluster is under reorganization, with a planned change of the underlying filesystem of the home directories from \href{http://en.wikipedia.org/wiki/Network_File_System}{NFS} to \href{http://en.wikipedia.org/wiki/IBM_General_Parallel_File_System}{GPFS}.
Also, most of the projects will be migrated to the newly acquired \href{http://www.emc.com/isilon}{EMC Isilon} 1PB system, based on their size and access requirements.

For users these transitions will be seamless, as their files will be synchronized with the new storage systems on the date of the migration.
\end{tcolorbox}
Indeed, the main NFS server __Galactus__ has been under high load since 2014, with the doubling of the number of computing nodes accessing it. 
As the limitations of this technology became more pronounced, a distributed setup with IBM's [GPFS](http://www-03.ibm.com/software/products/en/software) was chosen to replace it.
The migration to GPFS will allow for better stability, speed and future storage extensions, thus improving the productivity of the users of this cluster.

<!--
In technical terms, three NetApp E5400 disk enclosures providing 720TB of raw storage will be attached to three pairs of storage nodes that grant redundancy and failover, all
connected to Gaia's 40Gbps QDR InfiniBand network.

Additionally, project directories currently hosted on the Galactus will be migrated to the new [EMC Isilon](http://www.emc.com/isilon) solution, based on their size and
access requirements. This transition will allow users to directly access the projects on their workstations, enabling faster collaboration.
-->

As for the [EMC Isilon](http://www.emc.com/isilon) system, it is the result of a public tender released in 2014 for the acquisition of a scalable and modular Network Accessible Storage (NAS) to serve both SIU and HPC needs. Commonly funded from SIU, LCSB and HPC budget lines, the chosen solution is now deployed and validated with the expectation of a production release to all [UL](http://www.uni.lu) users by June, 2015.

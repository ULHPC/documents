## GPFS & Isilon Storage

In spring 2015, the main storage infrastructure of the Gaia cluster has been migrated from [NFS](http://en.wikipedia.org/wiki/Network_File_System) to [GPFS](http://www-03.ibm.com/software/products/en/software).

The increase in computing capabilities through the addition of new computing nodes in 2014 had shown the limitations of the NFS technology, with a
distributed setup with IBM's GPFS being chosen to replace it after consideration of several state of the art distributed filesystem technologies.

\begin{wrapfigure}[10]{r}{0.45\textwidth}
  \vspace{-5ex}
  \includegraphics[width=0.45\textwidth]{pics/2016/isilon.jpg}
\end{wrapfigure}

In technical terms, four NetApp E5400 disk enclosures providing __960 TB__ of raw storage were attached to four pairs of storage nodes that granted redundancy and failover, all connected to Gaia's 40Gbps QDR InfiniBand network.

The transition of user home and work directories (totalling __43 TB__) and group projects (totalling __336 TB__), was successfully performed at the end of April 2015, with no changes required in the user workflows.

The performance obtained on the new storage setup __increased by a factor of 2__ compared with the previous monolithic architecture, GPFS sustaining __more than 6GB/s__ for both read and write operations performed in parallel by several computing nodes.

The new [EMC Isilon](http://www.emc.com/isilon) system (shown above), commonly funded from SIU, LCSB and HPC budget lines, also came online last spring and now provides a large __1850 TB__ shared storage space for all members of the UL. The [OneFS](http://www.emc.com/en-us/storage/isilon/onefs-operating-system.htm) based system integrates 16 storage nodes in two performance tiers and is designed for scalability, resiliency and operational flexibility.

Based on performance and access requirements project directories requiring Big Data storage, currently stored on GPFS with redundant copies on the Isilon, will soon be allowed to migrate between the two systems.

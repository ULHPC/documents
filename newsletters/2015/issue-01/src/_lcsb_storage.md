# LCSB storage consolidation

Biomedical research sees ever-increasing data storage requirements as both working datasets and old data (retained for reproducibility and legal reasons) grow.
Data storage elements bought in the past years at the LCSB are currently being integrated in an uniform storage pool, allowing for easier usage, management and 
backup automation.

The following diagram shows the new architecture of the storage system, which will merge under [GlusterFS](http://www.gluster.org) six previously separate Certon systems 
(with 944 TB raw storage), and the new \texttt{bertha} server (648 TB raw storage):

\begin{figure}[!htbp]
  \centering
  \includegraphics[width=0.65\textwidth]{images/certon_arch}

  \centering
   LCSB unified storage, with the \texttt{highlander} server exposing the storage areas to users
\end{figure}

The Gluster filesystem (part of the RedHat Storage Server solution) has been chosen for this task following an indepth comparison of the modern distributed filesystems [Ceph](http://ceph.com), [OpenAFS](http://www.openafs.org), [Hadoop HDFS](http://hortonworks.com/hadoop/hdfs), [XtreemFS](http://www.xtreemfs.org), [Lustre](https://wiki.hpdd.intel.com/display/PUB/HPDD+Wiki+Front+Page), [BeeGFS](http://www.beegfs.com/cms), [GPFS](http://www-03.ibm.com/software/products/en/software) and [OCFS2](https://oss.oracle.com/projects/ocfs2).

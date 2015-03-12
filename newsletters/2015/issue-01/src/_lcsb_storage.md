## LCSB storage consolidation

Biomedical research sees ever-increasing data storage requirements as both working datasets and old data (retained for reproducibility and legal reasons) grow.
Data storage elements bought in the past years at the LCSB are currently being integrated in an uniform storage pool, allowing for easier usage, management and 
backup automation.

In this context, JF Le Fillâtre is recycling the old [Certon](http://certon.de/index.php/en/) boxes into an unified storage solution merged under the  [GlusterFS](http://www.gluster.org) filesystem according to the below architecture. 
In particular, the \texttt{highlander} server is designed to expose the storage areas (composed by six separate Certon systems totalling 944 TB raw storage, and the new \texttt{bertha} server featuring 648 TB raw storage) to the LCSB users.

\begin{center}
\includegraphics[width=0.65\textwidth]{images/certon_arch}
\end{center}

The Gluster filesystem (part of the RedHat Storage Server solution) has been chosen for this task following an indepth comparison of the modern distributed filesystems [Ceph](http://ceph.com), [OpenAFS](http://www.openafs.org), [Hadoop HDFS](http://hortonworks.com/hadoop/hdfs), [XtreemFS](http://www.xtreemfs.org), [Lustre](https://wiki.hpdd.intel.com/display/PUB/HPDD+Wiki+Front+Page), [BeeGFS](http://www.beegfs.com/cms), [GPFS](http://www-03.ibm.com/software/products/en/software) and [OCFS2](https://oss.oracle.com/projects/ocfs2).

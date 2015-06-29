
# Data Storage on UL HPC

### Local Data Storage

\centering\includegraphics[width=1\textwidth]{memory_hierarchy}

\begin{itemize}
\item \structure{SSD} {\footnotesize R/W: 560 MB/s; 85000 IOps} \hfill \alert{\textbf{1000 \euro/TB}}~~~~
    \item \structure{HDD (SATA @ 7,2 krpm)} {\footnotesize R/W: 100 MB/s; 190 IOps} \hfill \alert{\textbf{100 \euro/TB}}~~~~
	\end{itemize}

### Available File Systems

\wbegin{File Systems}

Logical manner to store, organize, manipulate and access data.

\wend

* _Disk file systems_: `ext4` (nodes), `xfs` (storage servers)
* _Network file systems_: NFS, SMB/CIFS
* _Distributed parallel file systems_: Lustre, GPFS, GlusterFS
      - data are stripped over multiple servers for high performance.
      - generally add robust failover and recovery mechanisms
      

### Shared storage on UL HPC

* All based on disk enclosure (Nexsan or NetApp)

\centering\includegraphics[height=0.5\textheight]{pics/gaia-nexsan-1.jpg}\ \ \includegraphics[height=0.5\textheight]{pics/gaia-nexsan-2.jpg}\ \ \includegraphics[height=0.5\textheight]{pics/chaos-as28-storage.jpg}

###  NFS-based Storage on UL HPC

* Enclosures configured with `xfs` over LVM
* An attached server exports the volume over `NFS`

\columnsbegin{0.4\textwidth}\centering

\includegraphics[height=0.4\textheight]{nfs_chaos.pdf}

\column{.6\textwidth}

\wbegin{}\centering

**Effective** capacity: __109 TB__ 

\wend

* Only available on _Chaos_:
    - 1 Netapp Enclosure (109 TB):
        - `$HOME`
	    - `$WORK`
		
\columnsend

* _Note_: all NFS shared storage of _Gaia_ was replaced on March 2015 in favor of  GPFS


### NFS Performances

\wbegin{}

* _Remember that NFS-based storage DOES NOT scale_

\wend

* In particular, adding a new enclosure: 
      - adding a new enclosure:  **does not** improve the general performance
           * un-like Lustre and GPFS

\centering
\transientimg{+}{height=0.4\textheight}{benchmark_nfs_read.pdf}
\transientimg{+}{height=0.4\textheight}{benchmark_nfs_write.pdf}

### Lustre Storage (Gaia)\hfill\includegraphics[height=1em]{logo_lustre.png}

\columnsbegin{0.45\textwidth}\centering

\includegraphics[height=0.75\textheight]{lustre_gaia.pdf}

\column{.55\textwidth}

\wbegin{}\centering

**Effective** capacity: __347 TB__ 

\wend

* Scalable Parallel FS
     - `$SCRATCH`
* Only available on _gaia_
* Current Layout: 
    - 2 MDS servers,
	- 4 OSS servers,
	- 3 Nexsan E60 encl.
	- 1 Netapp E5400 encl.

\columnsend

### Lustre Performances

\wbegin{}

* _Remember that Lustre-based storage DOES scale_

\wend

* In particular, adding a new enclosure:
      - increase the global capacity accordindly
      - **adds** the performance to the global perf. of the system
	  - Note: below measures were done **before** the recent extension

\centering
\transientimg{+}{height=0.4\textheight}{benchmark_lustre.pdf}

### GPFS  Storage (Gaia)\hfill\includegraphics[height=1em]{logo_gpfs.png}

\columnsbegin{0.55\textwidth}\centering

\includegraphics[height=0.6\textheight]{gpfs_gaia.pdf}

\column{.45\textwidth}

\wbegin{}\centering

**Effective** capacity: __524 TB__ 

\wend

* Scalable Parallel FS
     - `$HOME`
	 - `$WORK`
* Only available on _gaia_
* Current Layout: 
    - 6 servers,
	- 3 Netapp E5400 encl.

\columnsend

### GPFS Performances

\wbegin{}

* _Remember that GPFS-based storage DOES scale_

\wend

* In particular, adding a new enclosure:
      - increase the global capacity accordindly
      - **adds** the performance to the global perf. of the system

\centering
\transientimg{+}{height=0.45\textheight}{benchmark_gpfs.pdf}


### Isilon \hfill\includegraphics[height=1em]{logo_isilon.png}

\wbegin{}\centering

**Effective** capacity: __1460 TB__

\wend

* Mounting point on the _gaia_ cluster: `/mnt/isilon`
     - Performance evaluation in progress
	 - _Obj_: projects data go on it

\centering
\includegraphics[height=0.5\textheight]{isilon.pdf}


### UL HPC Backups

\wbegin{}\centering

Total **Effective** (split) capacity: __1365 TB__

\wend

* Based on [bontmia](http://folk.uio.no/johnen/bontmia/) and [backupninja](https://labs.riseup.net/code/projects/backupninja)
    - Backup Over Network To Multiple Incremental Archives
	- [`ULHPC/puppet-bontmia`](https://github.com/ULHPC/puppet-bontmia) puppet module
* _NFS-based_ targets:
    - __Chaos__: 1 Netapp Enclosure (130 TB) `cartman`
	- __Gaia__:
	      * 1 Netapp Enclosure (130 TB) `stan`
		  * 1 Nexsan Enclosure (189 TB): former `nfs.gaia` 
* _GlusterFS-based_ targets (_Gaia_ only) (916 TB)
    - `highlander` server exports the volumes
	     - `bertha` and the others Certon are storage enclosures

# Storage Policy

### Storage Policy

* `$HOME` (_NFS_ or _GPFS_) **is** under a regular backup policy.
* `$WORK` (_NFS_ or _GPFS_) **is not** backed up
      - Avoid massive parallel writes under NFS
	  - Use `cdw` to quickly change your current directory to `$WORK`
* `$SCRATCH` (_Lustre_*) **is not** backed up
      - designed for **temporarily need**, with fast I/O
	  - Use `cds` to quickly change your current directory to `$SCRATCH`
      - **On Chaos, `$SCRATCH` is `/tmp`** thus **NOT Shared**


\footnotesize

| Directory  | Max size | Max #files | Backup |
| ---------- | -------- | ---------- | ------ |
| `$HOME`    | 50 GB    | 500.000    | YES    |
| `$WORK`    | 3  TB    |            | NO     |
| `$SCRATCH` | 10 TB    |            | NO     |


### Project Management 

* 




# Last Challenges


g

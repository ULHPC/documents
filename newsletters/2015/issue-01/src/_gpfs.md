# Gaia storage system reorganization - GPFS 

The main storage system of the Gaia cluster is under reorganization, with a planned change of the underlying filesystem from the current NFS to GPFS.

The main NFS server **Galactus** has been under high load since 2014, with the doubling of the number of computing nodes accessing it. 
As the limitations of this technology became more pronounced, a distributed setup with IBM's [GPFS](http://www-03.ibm.com/software/products/en/software) was chosen to replace it.

The migration to GPFS will allow for better stability, speed and future storage extensions, thus improving the productivity of the users of this cluster.

In technical terms, three NetApp E5400 disk enclosures providing 720TB of raw storage will be attached to three pairs of storage nodes that grant redundancy and failover, all
connected to Gaia's 40Gbps QDR InfiniBand network.

For users the transition should be seamless, as their home directory files will be synchronized with the new storage systems on the date of the migration.

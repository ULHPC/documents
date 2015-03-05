# OS and Software Upgrades during Q1-Q2 2015

As part of our commitment to constantly improve the services offered by the HPC
platform, we will proceed with an upgrade of the underlying software running the 
platform during Q1 and Q2 2015.

In effect, we will migrate the OS of the computing nodes from Debian 6 (Squeeze)
to Debian 7 (Wheezy). The software environment available through the Modules
system will also be regenerated (see the section on __RESIF__), and the storage 
on Gaia will be reorganized and migrated for better stability and performance.

As it is our wish to make the upgrades as seamless as possible, we will
perform them in several phases, allowing for potential issues to be 
identified and corrected.

1. In a first phase, part of the Gaia cluster (gaia-83 to gaia-154) will be 
migrated to Debian 7, allowing users to test and adapt their workflows before
the full platform is upgraded. This phase is intended to last three
weeks, giving ample time for these tests to be conducted, while leaving sufficient
resources for time-critical work to be completed without interruption. 

2. A second phase will follow, with the rest of Gaia (nodes gaia-1 to gaia-79) 
upgraded to Debian 7 upon the successful conclusion of the trial Phase 1.
At the same time, the home directories of Gaia will be migrated from the current 
NFS storage server to a distributed GPFS setup (see the section on __GPFS__ for more 
information).

3. In the final phase, the Chaos cluster will also be upgraded to Debian 7, thus
achieving consistency between the two clusters.

The HPC team will strive to minimize the downtime of the clusters, with access
always being kept open to either Gaia or Chaos.

The operations outlined above will be performed on the following dates:

* Phase 1: March 16th 2015, Gaia under maintenance for 8h
* Phase 2: April 7th 2015, Gaia under maintenance for 8h
* Phase 3: April 14th 2015, Chaos under maintenance for 8h

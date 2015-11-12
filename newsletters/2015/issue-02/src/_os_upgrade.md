## Software Upgrades

As part of our commitment to constantly improve the services offered by the HPC platform,
in 2015 we have performed the most comprehensive software upgrades in the 7 years existence of UL HPC.

A staged upgrade of the OS on 280 computing systems from Debian 6 (Squeeze) to Debian 7 (Wheezy) has been done on both Chaos and Gaia clusters.
55 management systems and 101 hosted Virtual Machines have also undergone OS upgrades, allowing for increased stability and uninterrupted security
support of these critical systems.

The databases of the OAR Resource and Job Management System on Chaos and Gaia, containing the complete traces of 5 million user jobs (1.45M on Chaos - job #1 launched on February 15th 2008 and 3.55M jobs on Gaia - job #1 launched on December 21st 2011), have been migrated from MySQL to PostgreSQL.

The Subnet Manager of Gaia, providing routing across the InfiniBand fabric, has been configured in redundant mode for increased availability of this high speed network.

The software environment available through the Environment Modules system has been regenerated for the new underlying OS and embedded in the new [RESIF](http://resif.readthedocs.org/en/latest/) framework.

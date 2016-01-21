## New Computing Systems

2015 has seen several increases of the computing capacity of the UL HPC platform with the following
additions to the Gaia cluster which more than doubled its computing power:  

Two big SMP systems dedicated to the [RUES](http://wwwfr.uni.lu/research/fstc/research_unit_in_engineering_science_rues) research unit for Computational Mechanics workloads, and respectively to [LCSB](http://lcsb.uni.lu) for Bioinformatics:

* Delta D88x-M8-BI (gaia-80) featuring 8 * Intel Xeon E7-8880v2 @ 2.5 GHz (120 cores: 2.4 TFlops) with 3 TB of RAM and 12.6 TB of local storage;
* SGI UV 2000 (gaia-81) featuring 16 * Intel Xeon E5-4650v2 @ 2.4 GHz (160 cores: 3 TFlops) with 4TB of RAM;

The large amount of memory available on these systems enable in-memory processing of huge datasets, making possible amazing analyses and simulations.

Two ultra-dense enclosures with state-of-the-art general purpose computing systems:

* Dell FC430 (gaia-[155..178]): 24 computing nodes each with 2 * Intel Xeon E5-2680v3 @ 2.5 GHz	and 128 GB of RAM (576 cores: 23.04 TFlops)

Two dense, energy efficient enclosures with low power high performance CPUs based on the Haswell architecture featuring the Crystalwell package (large 128MB L4 cache):

* HP Moonshot (moonshot1-[1..45], moonshot2-[1..45]): 90 nodes, each with an Intel Xeon E3-1284Lv3 @ 1.8 GHz and 32 GB of RAM (360 cores: 10.39 TFlops and 2.88 TB of RAM in total). 

The moonshot nodes are ideal for a variety of BigData analytics workloads that are loosely coupled. 

Complementing the existing pool of GPGPU capable nodes are new ultra-dense Dell C4130 GPU nodes containing 16 NVIDIA Tesla K80 accelerators (32 GK210 GPUs), in addition to an upgrade with 10 Tesla K40m cards for the Dell R720 systems:

* Dell C4130 (gaia-[179..182]): 4 computing nodes each with 2 * Intel Xeon E5-2680v3 @ 2.5 GHz and 128 GB of RAM (96 cores: 3.84 TFlops) and 4 * Tesla K80 (79872 CUDA cores: 46.56 TFlops), each with 24 GB RAM.
* Dell R720 (gaia-[75..79]): 5 computing nodes, each with 2 * Intel Xeon E5-2660 @ 2.2GHz and 64 GB of RAM (80 cores: 1.4 TFlops) and 2 * Tesla K40m (28800 CUDA cores: 14.3 TFlops), each with 12 GB RAM.

Many domain specific (e.g. physics: ABINIT, bioinformatics: GROMACS, engineering: Abaqus FEA) and general purpose (e.g. MATLAB) software present on the UL HPC platform can benefit from the new GPU accelerators, resulting in a shorter time-to-solution improving productivity.

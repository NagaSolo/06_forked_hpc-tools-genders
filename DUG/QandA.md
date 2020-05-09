# Q and A by DUG
----------------------------------------------------------------------------------------------------------------------------------------

## Q1: Where do you typically look for system information/statistics on Linux?

### A1: 
I usually use command such as `netstat`, `ifconfig` or just `hostname` depending on what is needed to do with clusters, since currently I am working in deploying a kubernetes clusters. The other useful tool is `htop`, for memory usage, process id.

----------------------------------------------------------------------------------------------------------------------------------------

## Q2: Clustered file systems typically have 10's of millions of files and a naive find can take days. How could you improve that?

### A2: 
We can modify the codebase to make it run in parallel. Identify where the algos bottlenecks are, then use CUDA or OpenCl framework to paralellized intended section. Plus using MPI to distributes the work to workers nodes.

There even existed work on using gpu to parallelize NB:

- https://www.semanticscholar.org/paper/GPU-NB%3A-A-Fast-CUDA-Based-Implementation-of-Naïve-Andrade-Viegas/e588722cb2c9459d98dfbe872079e95aad339a32


----------------------------------------------------------------------------------------------------------------------------------------

## Q3: What are the issues with moving data quickly over 10Gb/s network link with 150ms latency? What strategies would you use to achieve wire-speed? What other bottlenecks might you see?

### A3: 
I am not quite sure, but as far as my experience goes, we are keen on using the best network switch and the best lan cable which is cat 6 by Molex. The other bottlenecks might be memory allocation. If we are proficient at managing memory to hold chunk of big data, before dispersing them to worker nodes, then we might be good to go

----------------------------------------------------------------------------------------------------------------------------------------

## Q4: Follow the instructions below:

Timeframe: Expect this to take between 10 to 15minutes.

1. Download and build/install genders (specifically get nodeattr working) https://github.com/chaos/genders

2. Provide a simple program (bash is fine) that uses nodeattr to update a single attribute for a single host

Eg: ./update host=node1 mac=aa:bb:cc:dd:ee:ff

Where the gender files might be 

node1 ip=1.2.3.4,mac=ff:cc:ee:dd:aa:bb,cluster=work

node2 ip=1.2.3.5,mac=ff:cc:ee:dd:aa:bc,cluster=work


### A4: 
- Flow: https://github.com/NagaSolo/06_forked_hpc-tools-genders/blob/master/DUG/Q4/Q4-Answer.md
- Script and binary dir: https://github.com/NagaSolo/06_forked_hpc-tools-genders/blob/master/DUG/Q4/

----------------------------------------------------------------------------------------------------------------------------------------

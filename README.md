
----------------------
Linus Kernel Statistics
----------------------
This repository has statistical study about linux Kernel which includes several linux-kernel stats.


## Introduction
Evolution is essential and indispensable for a software System "else it will become progressively less satisfactory". The software evolution can be characterized using various parameters version number, lines of code, number of patches and other software matrices. Linux has an interesting history and is arguably the most popular open source operating system, its history is actually quite short considering the timeline of operating systems.  In the early days of computing, programmers developed on the bare hardware in the hardware's language. The lack of an operating system meant that only one application (and one user) could use the large and expensive device at a time. Early operating systems were developed in the 1950s to provide a simpler development experience. Examples include the General Motors Operating System (GMOS) developed for the IBM 701 and the FORTRAN Monitor System (FMS) developed by North American Aviation for the IBM 709.
In the 1960s, Massachusetts Institute of Technology (MIT) and a host of companies developed an experimental operating system called Multics (or Multiplexed Information and Computing Service) for the GE-645. One of the developers of this operating system, AT&T, dropped out of Multics and developed their own operating system in 1970 called Unics. Along with this operating system was the C language, for which C was developed and then rewritten to make operating system development portable.

Twenty years later, Andrew Tanenbaum created a microkernel version of UNIX®, called MINIX (for minimal UNIX), that ran on small personal computers. This open source operating system inspired Linus Torvalds' initial development of Linux in the early 1990s. And is still evolving.

We have conducted a thorough review of the evolution of the Kernel from 17 Sept 1991 to the present in this post and attached the results obtained. 

## Abstract

## Table of Contents
- [How to run the scripts](#how-to-run-the-scripts)
  - [Clone / download](#clone--download)
  - [Run files separately using commands](#run-files-separately-using-commands)
  - [Run using makeFile](#run-using-makefile)
- [Contributing Guide](#contributing-guide)
  - [Open Stats](#open-stats)
  - [Raise a PR](#raise-a-pr)
  - [Create tickets](#create-tickets)
  - [Report issue](#report-issue)
- [Contact Us](#contact-us)

## How to run the scripts   
#### Clone / download
##### Step 1
Make a folder named "torvalds" in the home location : home/username

clone the repo in the folder "torvalds" using ``` git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git ```

"This will download the current kernel source repository"

##### Step 2
Now, Clone the repository that contains scripts using : ``` git clone https://github.com/tapaswenipathak/ linux-kernel-stats ```

Now, Run the script files using : 
- ``` bash loc.sh ```
- ``` bash glimpseindex_cocci.sh ```
- ``` bash patches.sh```

#### Run files separately using commands 
First, your script must declare which interpreter to use. You do this in the first line of the file. If it's a shell script, it should be #!/bin/sh or #!/bin/bash.

So here's a script that writes your username: ``` echo whoami.sh```
- To make it executable, use:
```chmod +x echo-whoami.sh```
- Then you can run it using:
```./echo-whoami.sh```

#### Run using makeFile

## Contributing Guide
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

Contributions are welcome!If you feel this excites you feel free to contribute! Below are some open stats which are open for contribution. Happy open Source!

### Open Stats 
A brief summary of various devices in the drivers directory can be found in the link below.
```ymlus 
 https://www.dropbox.com/scl/fi/z5mz0uol3zl0xy166wqpe/Drivers.paper?dl=0&rlkey=wt412tfnsnxq7uznaie4x88rp
```
### Raise a PR
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

Various linux kernel stats are open for the contribution. To contribute Fork the Repo and create a Branch for any issue that you are working upon.Create a Pull Request which will be promptly reviewed and suggestions would be added to improve it.


### Create tickets
Take a look at the Existing Issues or create your own Tickets.

### Report issue
If you find any incorrect information on this repository, kindly report an issue mentioning the reason, and attaching screenshot.

## Contact Us
Feel free to connect with us for discussing regarding our findings.

- Kavita Meena <kavita23meena.2002@gmail.com>
- Madhu Patel <Patelmadhu06@gmail.com>
- Tapasweni Pathak <tapaswenipathak@gmail.com>






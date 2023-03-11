
----------------------
Linus Kernel Statistics
----------------------
This repository has statistical study about linux Kernel which includes several linux-kernel stats.


## Introduction
Software evolution is essential and indispensable for a software system, "else it will become progressively less satisfactory." The software evolution can be characterized using various parameters such as version number, lines of code, number of patches, and other software matrices.

Linux has an interesting history and is arguably the most popular open-source operating system. In the early days of computing, programmers developed on the bare hardware in the hardware's language. The lack of an operating system meant that only one application (and one user) could use the large and expensive device at a time. Early operating systems were developed in the 1950s to provide a simpler development experience. Examples include the General Motors Operating System (GMOS) developed for the IBM 701 and the FORTRAN Monitor System (FMS) developed by North American Aviation for the IBM 709.

In the 1960s, Massachusetts Institute of Technology (MIT) and a host of companies developed an experimental operating system called Multics (or Multiplexed Information and Computing Service) for the GE-645. One of the developers of this operating system, AT&T, dropped out of Multics and developed their operating system in 1970 called Unics. Along with this operating system was the C language, for which C was developed and then rewritten to make operating system development portable.

Twenty years later, Andrew Tanenbaum created a microkernel version of UNIX®, called MINIX (for minimal UNIX), that ran on small personal computers. This open-source operating system inspired Linus Torvalds' initial development of Linux in the early 1990s. Linux is still evolving.

We have conducted a thorough review of the evolution of the Kernel from 17 Sept 1991 to the present in this post and attached the results obtained.


## Table of Contents
- [How to run the scripts](#how-to-run-the-scripts)
  - [Clone / Download](#clone--download)
  - [Run files separately using commands](#run-files-separately-using-commands)
  - [Run using makeFile](#run-using-makefile)
- [Contributing Guide](#contributing-guide)
  - [Open Stats](#open-stats)
  - [Contributing Guidelines](#contributing-guidelines)
  - [How to Contribute](#how-to-contribute)
  - [Pull Request Guidelines](#pull-request-guidelines)
  - [Raise a PR](#raise-a-pr)
  - [Report issue](#report-issue)
- [Troubleshooting Guide](#troubleshooting-guide)
  - [Scripts are not working](#scripts-are-not-working)
  - [Missing files or Repositories](#missing-files-or-repositories)
- [Contact Us](#contact-us)

## How to run the scripts   
#### Clone / Download
##### Step 1
[A] To clone the Linux Kernel Stable Tree, make a folder named "linux-stable" in the home location : home/usernameclone the repo in the folder "linux-stable" using ``` https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git ```. This will download the current kernel source repository.

[B] Additionaly, you will need to clone the following in the same directory as used above: 
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/xiang/erofs-utils.git ```
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/legion/kbd.git ```
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/tglx/history.git ```
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/nico/archive ```


##### Step 2
Now, clone the repository that contains the scripts using : ``` git clone https://github.com/tapaswenipathak/linux-kernel-stats ```

Now, Run the script files using : 
- ``` bash loc.sh ```
- ``` bash glimpseindex_cocci.sh ```
- ``` bash patches.sh```

#### Run files separately using commands 
First, your script must declare which interpreter to use. You do this in the first line of the file. If it's a shell script, it should be #!/bin/sh or #!/bin/bash.

So here's a script that writes your username: ``` echo-whoami.sh```
- To make it executable, use:
```chmod a+x echo-whoami.sh```
- Then you can run it using:
```./echo-whoami.sh```

#### Run using makeFile

## Contributing Guide
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

### Open Stats 
A brief summary of various devices in the drivers directory can be found in the link below.
```ymlus 
 https://www.dropbox.com/scl/fi/z5mz0uol3zl0xy166wqpe/Drivers.paper?dl=0&rlkey=wt412tfnsnxq7uznaie4x88rp
```
 
### Contributing Guidelines
We welcome contributions to our project and thank you for taking the time to improve it. Here are some guidelines to follow when contributing:

### Getting Started
Before contributing, please make sure to:

- Read the README file to understand the purpose and scope of the project.
- Look through the existing issues and pull requests to see if your contribution has already been addressed or discussed.
- If you're making significant changes or adding a new feature, consider opening an issue first to discuss it with the project maintainers.
- 
### How to Contribute
There are several ways to contribute to our project:

- **Reporting Bugs**: If you find a bug, please open an issue and describe the problem. Make sure to include steps to reproduce the issue and any error messages you receive regarding that issue.
- **Fixing Bugs**: If you'd like to fix a bug, please create a pull request with your changes. Make sure to include a description of the problem and how your changes will address it.
- **Improving Documentation**: If you notice any errors or omissions in the documentation, please create a pull request with your changes. Make sure to explain why the changes you made are necessary and how they can improve the documentation.

### Pull Request Guidelines
When creating a pull request, please follow these guidelines:

- Make sure your code is well-formatted and follows the project's coding conventions.
- Include tests to ensure your changes are working correctly.
- Explain the purpose of your changes and how they address any issues or feature requests.
- Be responsive to feedback from the project maintainers.

### Raise a PR
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

Various linux kernel stats are open for the contribution. To contribute, fork the repository and create a branch for any issue that you are working upon. Create a Pull Request which will be promptly reviewed and suggestions would be added to improve it.

#### PR Template
Make sure to follow these steps in order while raising a Pull Request:
> Title of PR should be short and precise
> Mention all the changes you have made in detail.
> Mention the external resources you have used if any. Also, if data files are uploaded to an external file manager, provide the URL(s) in the comments. 
> Mention any descrepencies if you faced any, or open a ticket regarding the same.
> If any other issues/PRs are corelated, mention them in the comments. 

### Report an Issue
If you find any incorrect information on this repository, kindly report it by creating an issue, mentioning the reason, and attaching a screenshot.

#### Issue Template
Make sure to follow these steps in order while raising an Issue:
> Title of Issue should be short but precise.
> Explain the issue as detailed as possible, attaching a screenshot.
> If the issue still persists but you have made updates regarding the same, then mention the updates regarding the issue in the comments.

## Troubleshooting Guide

### Scripts are not working
If the script files are not running, make sure that the script file has executable permissions. You can check it by running `ls -l <filename>` command and check if there is executable permission set for the user. If not, run `chmod +x <filename>` to make it executable. 

### Missing files or Repositories
The working URLs have been mentioned in [Clone / Download](#clone--download), but if any of the repositories or files are missing during cloning or running the scripts, make sure that you have the correct URLs for the repositories and the files. You can verify the URLs from the repository's official website. If you have the correct URLs, check your internet connection and try again.

### Missing dependencies
If the scripts (eg: python scripts) are dependent on any libraries or packages that are not installed in your system, make sure to install them using your package manager. Check the script file for any dependencies mentioned in the comments or documentation.

### Conclusion
Thank you for considering contributing to our project! We appreciate your time and effort, and we look forward to working with you.

## Contact Us
Feel free to connect with us for discussions regarding our findings.

- Kavita Meena <kavita23meena.2002@gmail.com>
- Madhu Patel <Patelmadhu06@gmail.com>
- Tapasweni Pathak <tapaswenipathak@gmail.com>





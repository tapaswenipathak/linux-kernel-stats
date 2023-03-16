
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
- [Technology Stack](#technology-stack)
- [How to run the scripts](#how-to-run-the-scripts)
  - [Clone / Download](#clone--download)
  - [Run files separately using commands](#run-files-separately-using-commands)
  - [Run using Makefile](#run-using-makefile)
- [Interpreting Guide](#interpreting-guide)
  - [Data Directory](#data-directory)
  - [Interpreting data](#interpreting-data)
  - [Discrepancies and Irregularities](#discrepancies-and-irregularities)
- [Contributing Guide](#contributing-guide)
  - [Open Stats](#open-stats)
  - [Contributing Guidelines](#contributing-guidelines)
  - [How to Contribute](#how-to-contribute)
  - [Pull Request Guidelines](#pull-request-guidelines)
  - [Raise a PR](#raise-a-pr)
  - [Report an Issue](#report-an-issue)
- [Troubleshooting Guide](#troubleshooting-guide)
  - [Scripts are not working](#scripts-are-not-working)
  - [Missing files or Repositories](#missing-files-or-repositories)
  - [Missing dependencies](#missing-dependencies)
- [Contact Us](#contact-us)

## Technology Stack
The Linux Kernel Stats repository has been developed using a combination of bash and python scripts. The bash scripts are used for data collection, while the python scripts are used for data processing. The development environment used for the repo was Ubuntu 22.04 LTS.


The following tools were used in the development of this repository:

- [Bash](https://www.gnu.org/software/bash/)
- [Python 3.x](https://www.python.org/)
- [Git](https://git-scm.com/)

Bash was used for its simplicity and ease of use in collecting system information, while Python 3.10.10 was used for data processing and web scraping.

Git was used for version control and collaborative development. All code changes were tracked using Git, and changes were made using the standard Git workflow of branching, committing, and merging.

Some of the scripts in the repository also use various Linux command-line tools such as grep, awk, and curl for data extraction, processing and analysis.

The Linux Kernel Stats repository was developed on a Linux-based operating system. It is recommended to run the scripts on a Linux-based system to ensure full compatibility and accurate results.

## How to run the scripts   
#### Clone / Download
##### Step 1
[A] To clone the Linux Kernel Stable Tree, make a folder named "linux-stable" in the home location : home/usernameclone the repo in the folder "linux-stable" using ``` https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git ```. This will download the current kernel source repository.

[B] Additionaly, you will need to clone the following in the home directory: 
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/xiang/erofs-utils.git ```
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/legion/kbd.git ```
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/tglx/history.git ```
   * ``` git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/nico/archive ```


##### Step 2
Now, clone the repository that contains the scripts using : ``` git clone https://github.com/tapaswenipathak/linux-kernel-stats ```

Install the following dependencies before proceeding to execute the python scripts:
- [requests](https://pypi.org/project/requests/) 
- [bs4](https://www.crummy.com/software/BeautifulSoup/bs4/doc/#installing-beautiful-soup)
- [lxml](https://lxml.de/installation.html) 


#### Run files separately using commands 
First, your script must declare which interpreter to use. You do this in the first line of the file. If it's a shell script, it should be #!/bin/sh or #!/bin/bash.

Here's an example for how to run a script:
This is a script that writes your username: ``` echo-whoami.sh ```
- To make it executable, use:
``` chmod a+x echo-whoami.sh ```
- Then you can run it using:
``` ./echo-whoami.sh ``` or ```bash echo-whoami.sh```

So, you can run individual script files like this: 
- ``` bash loc.sh ```
- ``` bash glimpseindex_cocci.sh ```
- ``` bash patches.sh ```

#### Run using Makefile
Make sure to have `make` installed in your device. If not, then install it using `sudo apt install make`. 
Now, go to the directory which contains the Makefile and type the command `make` and execute it. This will run all the code mentioned in `all:` which is mentioned in the Makefile.

## Interpreting Guide
This guide is intended to provide an understanding of how to interpret the data obtained from the linux-kernel-stats project.

The project collects data about the Linux kernel releases and provides various statistics, including list of drivers, list of release notes, and author contributions.

### Data Directory
The Data directory contains all the data generated by the linux-kernel-stats project. It contains data regarding number of commits, number of lines of code changed and removed, drivers used, information related to drivers etc.

The data is organized into various files and folders, including list of drivers and shortlogs of various drivers. Each file contains information regarding the specific Linux kernel release, including commit counts and author contributions.

### Interpreting data
The Linux kernel stats repository provides various outputs that can help in analyzing the development trends and changes made to the Linux kernel source code over time. The following sections describe the directories and files in the `data_dir` folder in the repository that contain useful information:

#### Directories
The following directories are available in `data_dir`:

`ShortLog_Bluetooth`: Contains shortlogs related to Bluetooth support. <br>
`ShortLog_Crypto`: Contains shortlogs related to cryptography. <br>
`Shortlog_DMA`: Contains shortlogs related to Direct Memory Access (DMA).<br>
`bus_protocols`: Contains logs related to bus protocols.<br>
`clock_config_support_data_dump`: Contains data dump files related to clock support configuration.<br>
`firmware_dump`: Contains logs related to firmware.<br>
`list_of_orgs`: Contains a list of organizations that support the Linux kernel.<br>
`message passing`: Contains files and logs related to message passing.<br>
`power_handeling`: Contains grep files related to power handling.<br>
`shortLog_Media`: Contains shortlogs related to media support.<br>
`shortlogs_2.1`: Contains shortlogs for version 2.1 of the kernel.<br>
`shortlogs_3.1`: Contains shortlogs for version 3.1 of the kernel.<br>
`spinlock`: Contains files related to spinlock support .<br>

#### Files
The following files are available in `data_dir`:

`Firmware.txt`: Contains output related to firmware.<br>
`output_buffer_dump.txt`: contains data dump related to buffers in linux kernel versions. <br>
`filesizeof_get_short_logs.txt`: Contains file sizes of output files of shortlogs from initial version to the latest version.<br>
`no_of_directories_drivers.txt`: Contains output related to the number of directories in drivers.<br>
`no_of_directories_staging.txt`: Contains staging output related to the number of directories in drivers.<br>
`output_diffstat_allVersions.txt`: Contains output related to commits, lines of code added, and removed of all versions of the kernel.<br>
`output_diffstat_mainVersions.txt`: Contains output related to commits, lines of code added, and removed of the main versions of the kernel.<br>
`output_duration_mainVersions.txt`: Contains output related to the duration of the main versions of the kernel.<br>
`output_extension.txt`: Contains updated output of the extension.sh script.<br>
`output_fetch_release_notes_links.txt`: Contains output related to fetching release notes links.<br>
`output_list_of_drivers.txt`: Contains output related to the list of drivers.<br>
`output_loc.txt`: Contains updated output of the loc.sh script.<br>
`output_no_of_directories_drivers.txt`: Contains output related to the number of directories in drivers.<br>
`output_patches.txt`: Contains output of the patches.sh script.<br>
`output_releaseDates.txt`: Contains output related to the release dates of the kernel versions.<br>
`output_release_notes.txt`: Contains data dump and release notes.<br>
`versions_till_now.txt`: Contains the list of kernel versions till now.<br>

### Discrepancies and Irregularities
There may be discrepancies and irregularities in the data collected by the linux-kernel-stats project. These may occur due to various reasons, such as incomplete data collection or inaccuracies in the data.

It is important to keep in mind that the data collected by the linux-kernel-stats project is based on the publicly available data.

Note on data source from (kbd and erofs-utils):
> The source repository used (kbd and erof-utils) for the linux kernel versions were not the official ones. As a result, it was not possible to obtain results for some versions using the scripts provided in this repository. The scripts are being updated to work with the official repository. The work is still in progress and it will be updated in the future.

### Usage:
To run the scripts, navigate to the root directory of the repository and execute the `make` command.
This command will run all of the scripts and generate the data files in the data directory. Refer to [How to run the scripts](#how-to-run-the-scripts) for more details.

### Contributing
If you would like to contribute to the linux-kernel-stats project, please refer to the [Contributing Guide](#contributing-guide) for guidelines on how to contribute.

### Tools Used
The linux-kernel-stats project is developed using various tools and technologies, including Bash, Python, and Git. The data is collected using scripts that are run periodically to collect data on the Linux kernel releases. See [Technology Stack](#technology-stack).

## Contributing Guide
[![Open Source Love svg2](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

### Open Stats 
A driver is a software component that allows the operating system to communicate with a specific hardware device. Drivers act as a bridge between the hardware and software, enabling them to communicate and work together effectively.

The following drivers were used for analysis:
| Driver Name             | Description                                          |
| -----------------------|------------------------------------------------------|
| Bluetooth               | Wireless communication technology                     |
| BU Mechanism            | Driver model for devices with Back Up power           |
| CD ROM                  | Driver for reading and writing CDs and DVDs           |
| Clocking mechanism      | Driver for controlling clocking in hardware systems   |
| CPU Handling            | Driver for managing CPU performance and power usage   |
| DMA Handling            | Driver for Direct Memory Access data transfers        |
| Firmware Specification  | Driver for firmware installation and updates          |
| GPU Handling            | Driver for graphics processing units                  |
| Hardware Tracing        | Driver for monitoring and diagnosing hardware issues  |
| Machintosh              | Driver for macOS systems                              |
| Media                   | Driver for audio and video devices                     |
| Memory                  | Driver for managing system memory                     |
| Message Parsing         | Driver for interpreting message formats               |
| Performance             | Driver for optimizing system performance              |
| Power                   | Driver for managing power usage and distribution      |
| Spin Lock Mechanism     | Driver for providing mutual exclusion synchronization |
| Staging                 | Driver for experimental or incomplete features        |
| Technologies with NFC   | Driver for Near Field Communication devices           |
| Video                   | Driver for video devices and display systems           |


A brief summary of various devices in the drivers directory can be found in the link below.
```ymlus 
 https://www.dropbox.com/scl/fi/z5mz0uol3zl0xy166wqpe/Drivers.paper?dl=0&rlkey=wt412tfnsnxq7uznaie4x88rp
```

### Contributing Guidelines
Contributions to the project are welcome and the following guidelines should be followed when contributing:

### Getting Started
Before contributing, please make sure to:

- Read the README file to understand the purpose and scope of the project.
- Look through the existing issues and pull requests to see if your contribution has already been addressed or discussed.
- If you're making significant changes or adding a new feature, consider opening an issue first to discuss it with the project maintainers.

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
- Title of PR should be short and precise
- Mention all the changes you have made in detail.
- Mention the external resources you have used if any. Also, if data files are uploaded to an external file manager, provide the URL(s) in the comments. 
- Mention any descrepencies if you faced any, or open a ticket regarding the same.
- If any other issues/PRs are corelated, mention them in the comments. 

### Report an Issue
If you find any incorrect information on this repository, kindly report it by creating an issue, mentioning the reason, and attaching a screenshot.

#### Issue Template
Make sure to follow these steps in order while raising an Issue:
- Title of Issue should be short but precise.
- Explain the issue as detailed as possible, attaching a screenshot.
- If the issue still persists but you have made updates regarding the same, then mention the updates regarding the issue in the comments.

## Troubleshooting Guide

### Scripts are not working
If the script files are not running, make sure that the script file has executable permissions. You can check it by running `ls -l <filename>` command and check if there is executable permission set for the user. If not, run `chmod +x <filename>` to make it executable. 

### Missing files or Repositories
The working URLs have been mentioned in [Clone / Download](#clone--download), but if any of the repositories or files are missing during cloning or running the scripts, make sure that you have the correct URLs for the repositories and the files. You can verify the URLs from the repository's official website. If you have the correct URLs, check your internet connection and try again.

### Missing dependencies
If the scripts (eg: python scripts) are dependent on any libraries or packages that are not installed in your system, make sure to install them using your package manager. Check the script file for any dependencies mentioned in the comments or documentation.

### Conclusion
Thank you for considering contributing to the project. Your time and effort are much appreciated, and the team looks forward to collaborating with you.

## Contact Us
Feel free to connect with us for discussions regarding our findings.

- Abhishek Dutt <duttabhishek0@gmail.com>
- Chirag Suthar <chiragsuthar236@gmail.com>
- Dheeraj Reddy <meetdheerajreddy@gmail.com>
- Kavita Meena <kavita23meena.2002@gmail.com>
- Madhu Patel <patelmadhu06@gmail.com>
- Pankaj Goswami <pankajgoswami1109@gmail.com>
- Tapasweni Pathak <tapaswenipathak@gmail.com>






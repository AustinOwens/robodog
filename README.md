# RoboDog Project

## Primer
I am creating an industrial 12 degree of freedom robotic quadruped. By leveraging Hoverboard motors for many of the actuators, as well as a processor and FPGA on a single System on Chip (SoC) for the main processing system, I am hoping to create an affordable and flexible quadruped that myself and others can leverage as a universal testbed. There are three main motivations for this project: **promoting engineering and robotics within the community** by (hopefully) explaining things in layman's terms, **creating an affordable, flexible, and reproducible quadruped system** that can be used for testing various algorithms from navigation to machine learning and everything in-between, **pushing the boundary of non-linear control system theory**.

### Promoting engineering and robotics within the community:
The first motivation behind this project is to help educate the community and try to get more people involved in Science, Technology, Engineering and Mathematics (STEM). This is being accomplished through documenting all steps for this project on my YouTube channel as well as open-sourcing everything.

### Creating an affordable, flexible, and reproducible quadruped system:
The second motivation is for the quadruped system to be used as a universal testbed for testing a myriad of algorithms and control system techniques. Incorporating an FPGA helps with this endeavor since it presents a reconfigurable platform that can conform to a variety of user requirements. Many algorithms that are traditionally carried out on processors for a quadruped can be off-loaded to the FPGA resulting in increased efficiency, power-savings, and reliability. Furthermore, IP cores can be added to the code base from the community to seamlessly facilitate additional capabilities/features within the system.

### Pushing the boundary of non-linear control system theory:
The third motivation behind this project is to help contribute journal papers to the academic community for creating fluid motion movement using non-linear control system principles while primarily using common hobbyist and Commercial Off The Shelf (COTS) components.


## Whats in this repo

This repo will contain various pieces of software, 3D CAD models, and other important elements for the building and functioning of RoboDog. 

Extensive documentation and current progress for the RoboDog build can be found on the [RoboDog Playlist](https://www.youtube.com/playlist?list=PLJtm2YNbaY4-mPPJy818D5XtLNfD23YhQ) located on my YouTube channel, [AustinTronics](https://www.youtube.com/c/AustinTronics/about). 

[<img src="https://i.imgur.com/HekI1S4.jpeg" width="750">](https://www.youtube.com/playlist?list=PLJtm2YNbaY4-mPPJy818D5XtLNfD23YhQ "RoboDog Playlist")

I am doing this completely on my free time so if you support what I'm doing, subscribe to my YouTube channel and share my videos with anyone you think would be interested. I appreciate the support! <3

## Downloading Software

To get all the software (including the submodules I used on the Zybo Z7-20 board), run the following command in your terminal:

```git clone --recurse-submodule https://github.com/AustinOwens/robodog.git```

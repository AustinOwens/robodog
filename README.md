# ROBODOG PROJECT

## PRIMER
I am creating an industrial 12 degree of freedom robotic quadruped. By leveraging Hoverboard motors for many of the actuators, as well as a processor and FPGA on a single System on Chip (SoC) for the main processing system, I am hoping to create an affordable and flexible quadruped that myself and others can leverage as a universal testbed. There are three main motivations for this project: **promoting engineering and robotics within the community** by (hopefully) explaining things in layman's terms, **creating an affordable, flexible, and reproducible quadruped system** that can be used for testing various algorithms from navigation to machine learning and everything in-between, **pushing the boundary of non-linear control system theory**.

### Promoting engineering and robotics within the community:
The first motivation behind this project is to help educate the community and try to get more people involved in Science, Technology, Engineering and Mathematics (STEM). This is being accomplished through documenting all steps for this project on my YouTube channel as well as open-sourcing everything.

### Creating an affordable, flexible, and reproducible quadruped system:
The second motivation is for the quadruped system to be used as a universal testbed for testing a myriad of algorithms and control system techniques. Incorporating an FPGA helps with this endeavor since it presents a reconfigurable platform that can conform to a variety of user requirements. Many algorithms that are traditionally carried out on processors for a quadruped can be off-loaded to the FPGA resulting in increased efficiency, power-savings, and reliability. Furthermore, IP cores can be added to the code base from the community to seamlessly facilitate additional capabilities/features within the system.

### Pushing the boundary of non-linear control system theory:
The third motivation behind this project is to help contribute journal papers to the academic community for creating fluid motion movement using non-linear control system principles while primarily using common hobbyist and Commercial Off The Shelf (COTS) components.

## PROJECT STATUS
Current progress for the RoboDog build can be found on the [RoboDog Playlist](https://www.youtube.com/playlist?list=PLJtm2YNbaY4-mPPJy818D5XtLNfD23YhQ) located on my YouTube channel, [AustinTronics](https://www.youtube.com/c/AustinTronics/about). 

[<img src="https://i.imgur.com/HekI1S4.jpeg" width="750">](https://www.youtube.com/playlist?list=PLJtm2YNbaY4-mPPJy818D5XtLNfD23YhQ "RoboDog Playlist")

I am doing this completely on my free time so if you support what I'm doing, subscribe to my YouTube channel and share my videos with anyone you think would be interested. I appreciate the support! :heart:

## WHAT'S IN THIS REPO
To promote better version control practices, dependency management, and extensibility of the RoboDog project, different elements of the RoboDog software are stored in their own repositories. These software repositories are modular in nature and can be repurposed for other projects if desired.

Google's [git-repo](https://gerrit.googlesource.com/git-repo) tool is used to help manage the different combinations and revisions of repositories together in this RoboDog repo. Here are some useful write-ups for learning about the git-repo tool: 
 - https://gerrit.googlesource.com/git-repo
 - https://docs.sel4.systems/projects/buildsystem/repo-cheatsheet.html
 - https://gerrit.googlesource.com/git-repo/+/master/docs/manifest-format.md 

## USAGE
To get all the software, you will need Google's [git-repo](https://gerrit.googlesource.com/git-repo) tool.

### git-repo install
Many distros include `repo`, so you might be able to install from there.

Debian/Ubuntu:
```
$ sudo apt-get install repo
```

You can install git-repo manually as well since it's a single script:
```
$ mkdir -p ~/.bin
$ PATH="${HOME}/.bin:${PATH}"
$ curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
$ chmod a+rx ~/.bin/repo
```

#### Getting a new SSH key
GitHub documentation provides a good write-up for how to generate new SSH keys:
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent 

#### Optional: Using SSH with git-repo
If SSH is being used to fetch repositories instead of HTTPS, you may be asked to enter your SSH passphrase for every repository using SSH. To avoid entering the passphrase every time, you can securely save your passphrase in an SSH agent, such as `keychain`.

To use `keychain` with your SSH key, you must first install it on your system:

Debian/Ubuntu
```
sudo apt-get install keychain
```

Then perform the following command to sync your key with the SSH agent:
```
eval `keychain --eval ~/.ssh/id_ed25519`
```
Where `~/.ssh/id_ed25519` is the path to your private key.

More information on `keychain` or how to store your keys with other SSH agents can be found here:
- https://linux.die.net/man/1/keychain
- https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases 


### Downloading RoboDog Repos
The RoboDog repo contains different manifest files depending on what elements of the RoboDog project you want to clone:

- `default.xml` - Specifies specific revisions from each repository. These combinations of revisions should always work with one another assuming the correct build configurations are used.
- `latest.xml` - Specifies the bleeding edge for the branch that this file is in. For example, if `latest.xml` is in the langdale branch, it will pull other repos from langdale-next. These aren’t guaranteed to work and may contain code/configurations that have not been fully tested together.

The branches used in the RoboDog repo match the [Yocto projects](https://github.com/yoctoproject/poky) branching scheme. This is because the RoboDog project heavily leverages the Yocto project and having similar naming conventions make it easy to check which branches of the RoboDog project is compatible with which branches of the Yocto project.

#### Step 1 - Make a project directory
```
mkdir ~/robodog_project
cd ~/robodog_project
```

#### Step 2 - Initialize your project directory
To initialize your project directory to get the stable version of the RoboDog project:

```
repo init -u https://github.com/AustinOwens/robodog.git -b langdale
```

To initialize your project directory to get the bleeding edge for the RoboDog project, use the `latest.xml` manifest file:
```
repo init -u https://github.com/AustinOwens/robodog.git -b langdale -m latest.xml
```

#### Step 3 - Sync your project directory with all the repos specified by the manifest file
```
repo sync
```

#### Step 4 (optional) - Start local branches for development
By default, all repos will be in a detached state that matches the revision as specified in the manifest file. 

You can use git how you would expect in all repos that have been downloaded. Due to the number of repos that may be checked out, repo offers a convenient command to checkout or create a new a local branch for development for all repos:
```
repo start --all <branch_name>
```

To set back all repos to their detached state as specified in the manifest file, issue the following command:
```
repo sync -d
```

#### Step 5 - Build and run the Docker container
```
docker build --build-arg USERNAME=<user_name> --build-arg UID="$(id -u)" -t yocto-img .
./docker.run -u <user_name> -s $(pwd)/workspace -i yocto-img
sudo chown -R <user_name> workspace # Where the password is <user_name>
```

Where `<user_name>` is the username you want to create inside the docker container.

#### Step 6 - Prepare and run Yocto build

To prepare the shell environment and build the robodog-image for the Zybo Z7-20, run the following command:
```
source build.sh
```

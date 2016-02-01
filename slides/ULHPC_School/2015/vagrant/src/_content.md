
# Introduction

###  What is [Vagrant](http://vagrantup.com/)

\hfill\myurl{http://vagrantup.com/}

\includegraphics[width=\textwidth]{screenshot_vagrant}

### What is [Vagrant](http://vagrantup.com/) ?

\wbegin{}

\centering Create and configure _lightweight_, _reproducible_, and _portable_ development environments

\wend

* Command line tool
* Automates VM creation with
    - VirtualBox
    - VMWare etc.	
* Integrates well with configuration management tools
    - Shell
	- Puppet etc.

####

\centering
Runs on Linux, Windows, MacOS


### Why use Vagrant?

* Create new VMs quickly and easily: only one command!

\command{vagrant up}

* Keep the number of VMs under control
     - All configuration in `VagrantFile`
* Reproducability
     - Identical environment in development and production
* Portability
     - _avoid_ sharing 4 GB VM disks images
	 - [Vagrant Cloud](https://vagrantcloud.com/) to share your images
* Collaboration made easy:
\begin{cmdline}
\cmdlineentry{git clone ...}\\
\cmdlineentry{vagrant up}\\
\end{cmdline}


# Installation

### Installation Notes: Windows / Linux

* Install [Oracle Virtualbox](https://www.virtualbox.org/)
* Go on the [Download Page](http://www.vagrantup.com/downloads)
     - select the appropriate OS, in 64 bits versions

<!--
> _Tip [Windows]:_ quickly open a command prompt to your project:
>    `shift` + right-clicking the project folder, then "`open command window here`".
-->

* _Notes for windows users_:
    - you will also need both [PuTTY and PuTTYGen](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)
    - Vagrant boxes are located in `%userprofile%/.vagrant.d/boxes`
    - To configure the appropriate Putty profile:
	     * run _`vagrant ssh-config`_ to collect IP and port (after `vagrant up`)
		 * load `%userprofile%/.vagrant.d/insecure_public_key`
		 * Use `Save Public Key`to convert the OpenSSH key to PPK format
		 * Create the PuttY profile accordingly (username: `vagrant`)

### Installation Notes: Mac OS

* Best done using [Homebrew](http://brew.sh/) and [Cask](http://sourabhbajaj.com/mac-setup/Homebrew/Cask.html)
    - install [Homebrew](http://brew.sh/)
	- install [Homebrew-cask](http://caskroom.io/) 

~~~bash
$> brew install caskroom/cask/brew-cask
$> brew cask install virtualbox    # install virtualbox
$> brew cask install vagrant
$> brew cask install vagrant-manager # see http://vagrantmanager.com/
~~~

\hfill\includegraphics[height=0.2\textheight]{screenshot_vagrant_manager.png}\ \ 
\includegraphics[height=0.2\textheight]{screenshot_vagrant_manager2.png}


# Usage 

<!--

### Definition

* _Host_: Host operating system (Windows, Mac, RHEL),
* _Guest_: Guest operating system aka the VM
      - Ubuntu, Debian, CentOS...
* _Provider_: Provider of virtual machines or containers used
      - [VirtualBox](https://www.virtualbox.org/) is upstream default
* _Provisioner_: Configuration management system to set up (provision) your machine
	- Puppet etc.
* _Vagrant box_: Package format for the images
* _`Vagrantfile`_:  project configuration and provisioning

--> 

### Minimal default setup

\command{vagrant init <user>/<name>\hfill\textit{\# setup a vagrant cloud image}}

* A `Vagrantfile` is configured

. . .

\command{vagrant up \hfill\textit{\# boot the box(es) set in the Vagrantfile}}

* The base box is downloaded and stored locally
    - in `~/.vagrant.d/boxes/`
* A new VM is created and configured with the base box as template
* The VM is booted and (eventually) provisioned

. . . 

\command{vagrant ssh \hfill\textit{\# connect inside it}}

### Find a vagrant box

\bbegin{}

- [Vagrant Cloud](https://vagrantcloud.com/) \hfill\myurl{https://vagrantcloud.com/}
- [VagrantBox.es](https://vagrantcloud.com/) \hfill\myurl{http://www.vagrantbox.es/}

\bend

. . .

\toyou

~~~bash
$> vagrant init  hashicorp/precise32
$> vagrant up
$> vagrant ssh
~~~

* _Note_: once within the box:
     - `/vagrant` is the root directory hosting the `Vagrantfile`

### Configuring Vagrant

* Minimal `Vagrantfile` (Ruby syntax)

~~~ruby
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'hashicorp/precise32'
end
~~~

* Configure Multiple VMs
     - See [`ULHPC/puppet-sysadmins`](https://github.com/ULHPC/puppet-sysadmins/blob/devel/Vagrantfile)




### Using another box

~~~bash
# From the command line (Vagrant cloud)
$> vagrant init alphainternational/centos-6.5-x64

# From the command line ("old", pre-1.5 style):
$ vagrant box add --name centos65 \
  http://packages.vstone.eu/vagrant-boxes/centos-6.x-64bit-latest.box
$ vagrant init centos65
~~~

. . .

* Apply the changes

\command{vagrant \{ destroy | halt \} \hfill\textit{\# destroy / halt}}

~~~bash
$> vagrant destroy
$> vagrant up
$> vagrant ssh
~~~

<!--
### Configure Multiple VMs

* See [`ULHPC/puppet-sysadmins`](https://github.com/ULHPC/puppet-sysadmins/blob/devel/Vagrantfile)

\tinyb

~~~ruby
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    {
        :centos_7 => {
            :box => "svarrette/centos-7",
        },
        :debian_7 => {
            :box     => "svarrette/debian-7-puppet",
        }
    }.each do |name,cfg|
        boxname = name.to_s.downcase.gsub(/_/, '-')
        config.vm.define boxname do |local|
            local.vm.box = cfg[:box]
            local.vm.host_name = ENV['VAGRANT_HOSTNAME'] || boxname.concat(".vagrant.com")
        end
    end
end
~~~

\tinye

-->

### Generate your own box

* You might rely on [Falkor/vagrant-vms](https://github.com/Falkor/vagrant-vms)
     - use it at your own risks
	 - based on [packer](http://www.packer.io/) and [veewee](https://github.com/jedi4ever/veewee)

~~~bash
$> git clone https://github.com/Falkor/vagrant-vms.git
$> cd vagrant-vms
$> gem install bundler
$> bundle install
$> rake setup

# initiate a template for a given Operating System:
$> rake packer:{Debian,CentOS,openSUSE,scientificlinux,ubuntu}:init
# Build a Vagrant box
$> rake packer:{Debian,CentOS,openSUSE,scientificlinux,ubuntu}:build
# If things goes fine:
$> vagrant box add packer/<os>-<version>-<arch>/<os>-<version>-<arch>.box
~~~

### Customize your box

* _Obj_: customize / specialize the configuration of a _running_ box
* This can be done in two ways: 
     1. use **provisionning** within the `Vagrantfile`
	 2. re-package the box via `vagrant package`

~~~bash
# locate the name of the running VM
$> VBoxManage list runningvms
"vagrant-vms_default_1431034026308_70455" {...}
puppet-sysadmins_debian-7_1433278488158_28667" {...}

# Create the box 
$> vagrant package \
    --base vagrant-vms_default_1431034026308_70455 \
	--output packer/<os>-<version>-<arch>/<os>-<version>-<arch>.box
~~~



-*- mode: markdown; mode: visual-line; fill-column: 80 -*-


       Time-stamp: <Mar 2015-02-24 21:23 svarrette>

         _    _ _        _    _ _____   _____   _____                                        _       
        | |  | | |      | |  | |  __ \ / ____| |  __ \                                      | |      
        | |  | | |      | |__| | |__) | |      | |  | | ___   ___ _   _ _ __ ___   ___ _ __ | |_ ___ 
        | |  | | |      |  __  |  ___/| |      | |  | |/ _ \ / __| | | | '_ ` _ \ / _ \ '_ \| __/ __|
        | |__| | |____  | |  | | |    | |____  | |__| | (_) | (__| |_| | | | | | |  __/ | | | |_\__ \
         \____/|______| |_|  |_|_|     \_____| |_____/ \___/ \___|\__,_|_| |_| |_|\___|_| |_|\__|___/
                                                                                                     
                                                                                                     
       Copyright (c) 2015 UL HPC Management Team <hpc-sysadmins@uni.lu>

Reference repository for the documents and components of UL HPC communication
* [Sources](https://github.com/ULHPC/documents)

## Synopsis

Reference repository for the documents and components of UL HPC communication
## Installation 

This repository is hosted on [GForge @ Uni.lu](https://github.com/ULHPC/documents). 

**`/!\ IMPORTANT`**: Once cloned, initiate your local copy of the repository by running: 

    $> cd ul hpc documents
    $> make setup


## Resources

### Git

This repository make use of [Git](http://git-scm.com/) such that you should have
it installed on your working machine: 

       $> apt-get install git-core # On Debian-like systems
	   $> yum install git          # On CentOS-like systems
       $> brew install git         # On Mac OS, using [Homebrew](http://mxcl.github.com/homebrew/)
       $> port install git         # On Mac OS, using MacPort

Consider these resources to become more familiar (if not yet) with Git:

* [Simple Git Guide](http://rogerdudler.github.io/git-guide/)
* [Git book](http://book.git-scm.com/index.html)
* [Github:help](http://help.github.com/mac-set-up-git/)
* [Git reference](http://gitref.org/)

At least, you shall configure the following variables

       $> git config --global user.name "Your Name Comes Here"
       $> git config --global user.email you@yourdomain.example.com
       # configure colors
       $> git config --global color.diff auto
       $> git config --global color.status auto
       $> git config --global color.branch auto

Note that you can create git command aliases in `~/.gitconfig` as follows: 

       [alias]
           up = pull origin
           pu = push origin
           st = status
           df = diff
           ci = commit -s
           br = branch
           w  = whatchanged --abbrev-commit
           ls = ls-files
           gr = log --graph --oneline --decorate
           amend = commit --amend

Consider my personal [`.gitconfig`](https://github.com/Falkor/dotfiles/blob/master/git/.gitconfig) as an example -- if you decide to use it, simply copy it in your home directory and adapt the `[user]` section. 

### [Git-flow](https://github.com/nvie/gitflow)

The Git branching model for this repository follows the guidelines of
[gitflow](http://nvie.com/posts/a-successful-git-branching-model/).
In particular, the central repository holds two main branches with an infinite lifetime:

* `production`: the *production-ready* branch
* `master`: the main branch where the latest developments interviene. This is the *default* branch you get when you clone the repository.

Thus you are more than encouraged to install the [git-flow](https://github.com/nvie/gitflow) extensions following the [installation procedures](https://github.com/nvie/gitflow/wiki/Installation) to take full advantage of the proposed operations. The associated [bash completion](https://github.com/bobthecow/git-flow-completion) might interest you also.

### Releasing mechanism

The operation consisting of releasing a new version of this repository is automated by a set of tasks within the root `Makefile`.

In this context, a version number have the following format:

      <major>.<minor>.<patch>[-b<build>]

where:

* `< major >` corresponds to the major version number
* `< minor >` corresponds to the minor version number
* `< patch >` corresponds to the patching version number
* (eventually) `< build >` states the build number _i.e._ the total number of commits within the `master` branch.

Example: \`1.0.0-b28\`

The current version number is stored in the root file `VERSION`. __/!\ NEVER MAKE ANY MANUAL CHANGES TO THIS FILE__

For more information on the version, run:

     $> rake version:info

If a new version number such be bumped, you simply have to run:

      $> rake version:{major,minor,patch}

This will start the release process for you using `git-flow`.
Once you have finished to commit your last changes, make the release effective by running:

      $> rake version:release

it will finish the release using `git-flow`, create the appropriate tag in the `production` branch and merge all things the way they should be.


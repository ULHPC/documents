-*- mode: markdown; mode: visual-line; fill-column: 80 -*-

         _    _ _        _    _ _____   _____   _____                                        _       
        | |  | | |      | |  | |  __ \ / ____| |  __ \                                      | |      
        | |  | | |      | |__| | |__) | |      | |  | | ___   ___ _   _ _ __ ___   ___ _ __ | |_ ___ 
        | |  | | |      |  __  |  ___/| |      | |  | |/ _ \ / __| | | | '_ ` _ \ / _ \ '_ \| __/ __|
        | |__| | |____  | |  | | |    | |____  | |__| | (_) | (__| |_| | | | | | |  __/ | | | |_\__ \
         \____/|______| |_|  |_|_|     \_____| |_____/ \___/ \___|\__,_|_| |_| |_|\___|_| |_|\__|___/
                                                                                                     
                  Copyright (c) 2015 UL HPC Management Team <hpc-sysadmins@uni.lu>

Reference repository for the documents and components of UL HPC communication

* [Sources](https://github.com/ULHPC/documents)
* [Github Project page](https://github.com/ULHPC/documents)
* [Issues](https://github.com/ULHPC/documents/issues)

## Synopsis

Reference repository for the documents and components of UL HPC publications and communication

## Installation / Pre-requisites

This repository is hosted on [Github](https://github.com/ULHPC/documents). 

**`/!\ IMPORTANT`**: Once cloned, initiate your local copy of the repository by running: 

    $> cd documents
    $> make setup

Later on, you can upgrade the [Git submodules](https://github.com/ULHPC/documents/tree/master/.submodules) to the latest version by running:

     $> make upgrade

## Repository Layout

This repository is organized as follows:

```
.
├── LICENSE
├── Makefile     # GNU make configuration piloting the repository operations
├── README.md    # this file
├── VERSION      # Current version of the repository
├── biblio.bib   # Reference UL HPC BibTeX 
├── logos/       # Hold all logos etc. of the UL HPC platform
├── newsletters/ # Hold PDF and LaTeX sources of UL HPC newsletters
├── screenshots/ # Some screenshots to be used in slides and publications
└── style/       # LaTeX style for UL HPC documents 
```

## UL HPC Newsletters

* [HPC Newsletter -- Issue 1 -- March 2015](newsletters/2015/issue-01)
* [HPC Newsletter -- Issue 2 -- January 2016](newsletters/2016/issue-02)

## LaTeX Style

* for Books: [`ulhpc_book.sty`](style/ulhpc_book/)
* for regular article / technical reports: [`ulhpc_article.sty`](style/ulhpc_article/)
* for newsletters: [`ulhpc_newsletter`](style/ulhpc_newsletter/)

## UL HPC Logos

See the [`logos/`](logos/) directory.

In particular, you'll find the [sources](logos/src/) and the exported version (in [PDF](logos/logo_ULHPC.pdf) or [PNG](logos/logo_ULHPC.png)) 

## Advanced informations

### Git

This repository make use of [Git](http://git-scm.com/). Consider these resources to become more familiar (if not yet) with Git:

* [Simple Git Guide](http://rogerdudler.github.io/git-guide/)
* [Git book](http://book.git-scm.com/index.html)
* [Github:help](http://help.github.com/mac-set-up-git/)
* [Git reference](http://gitref.org/)

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

     $> make versioninfo

If a new version number such be bumped, you simply have to run:

      $> make start_bump_{major,minor,patch}

This will start the release process for you using `git-flow`.
Once you have finished to commit your last changes, make the release effective by running:

      $> make release

it will finish the release using `git-flow`, create the appropriate tag in the `production` branch and merge all things the way they should be.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Licence

Unless otherwise precised, this project and the sources proposed within this repository are released under the terms of the [CC by-nc-sa](LICENCE) licence. 

[![Licence](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0)

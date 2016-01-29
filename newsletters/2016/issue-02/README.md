-*- mode: markdown; mode: visual-line; fill-column: 80 -*-

[![Licence](https://img.shields.io/badge/license-CC by--nc--sa-blue.svg)](http://creativecommons.org/licenses/by-nc-sa/4.0)

        _    _ _        _    _ _____   _____   _   _                   _      _   _            
       | |  | | |      | |  | |  __ \ / ____| | \ | |                 | |    | | | |           
       | |  | | |      | |__| | |__) | |      |  \| | _____      _____| | ___| |_| |_ ___ _ __ 
       | |  | | |      |  __  |  ___/| |      | . ` |/ _ \ \ /\ / / __| |/ _ \ __| __/ _ \ '__|
       | |__| | |____  | |  | | |    | |____  | |\  |  __/\ V  V /\__ \ |  __/ |_| |_  __/ |
        \____/|______| |_|  |_|_|     \_____| |_| \_|\___| \_/\_/ |___/_|\___|\__|\__\___|_|
        ___                      ____                _                 ____   ___  _  __
        |_ _|___ ___ _   _  ___  |___ \              | | __ _ _ __     |___ \ / _ \/ |/ /_
         | |/ __/ __| | | |/ _ \   __) |  _____   _  | |/ _` | '_ \      __) | | | | | '_ \
         | |\__ \__ \ |_| |  __/  / __/  |_____| | |_| | (_| | | | |_   / __/| |_| | | (_) |
        |___|___/___/\__,_|\___| |_____|          \___/ \__,_|_| |_(_) |_____|\___/|_|\___/
                                                                                               
                   Copyright (c) 2015-2016 UL HPC Management team <hpc-sysadmins@uni.lu>


[PDF](ulhpc_newsletter-issue-02.pdf) and [LaTeX sources](src/) for the [UL HPC](http://hpc.uni.lu) newsletter -- issue 2.

## LaTeX Sources compilation

LaTeX sources are available in the `src/` directory and massively rely on the [Git submodules](https://github.com/ULHPC/documents/tree/master/.submodules) configured for this [repository](https://github.com/ULHPC/documents/).

In particular, you shall ensure you have run `make setup` at the root of your freshly cloned repository to initiate correctly these sym-links. 

### Pre-requisites

Compilation of this newsletter follows the same [guidelines of the `ulhpc_newsletter.sty`](https://github.com/ULHPC/documents/tree/master/style/ulhpc_newsletter) LaTeX style.
In particular, the following _additional_ components to a regular LaTeX environment are __required__:

* [PGF/TikZ](http://sourceforge.net/projects/pgf/)
* The [`lualatex`](http://www.luatex.org/) compiler
* the [pandoc](http://johnmacfarlane.net/pandoc/installing.html) markdown to LaTeX converter
* some additional fonts ([`fontawesome`](https://www.ctan.org/tex-archive/fonts/fontawesome)) and styles (like [`qrcode`](https://www.ctan.org/pkg/qrcode)).
     - Under Debian, running the following commands shall be sufficient: 
     
                   $> apt-get install texlive-latex-base texlive-fonts-extra texlive-luatex texlive-pictures

     - Under Ubuntu, for some reason, the [`qrcode`](https://www.ctan.org/pkg/qrcode) package is not included in `texlive-pictures` such that you'll need to setup it by hand as follows:

                   # See http://www.ctan.org/tex-archive/macros/latex/contrib/qrcode
                   $> wget http://mirrors.ctan.org/macros/latex/contrib/qrcode/qrcode.dtx
                   $> wget http://mirrors.ctan.org/macros/latex/contrib/qrcode/qrcode.ins
                   $> latex qrcode.ins      # shall produce qrcode.sty
                   $> rm qrcode.dtx qrcode.ins

### Compilation of the LaTeX sources

The compilation of this newsletter relies on [GNU Make](http://www.gnu.org/software/make/).
To compile this document, simply run:

    $> cd src/
	$> make

This shall generate the PDF version of the newsletter `src/ulhpc_newsletter-issue-02.pdf`.
A reference [PDF](ulhpc_newsletter-issue-02.pdf) is committed within the repository. 

## Licence

This project is released under the terms of the [CC by-nc-sa](LICENCE) licence. 

[![Licence](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0)

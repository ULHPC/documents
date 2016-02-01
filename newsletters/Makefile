##################################################################################
# Makefile - Configuration file for GNU make (http://www.gnu.org/software/make/)
# Time-stamp: <Mon 2016-02-01 14:53 svarrette>
#
# Copyright (c) 2016 Sebastien Varrette <Sebastien.Varrette@uni.lu>
#
# Compilation of the UL HPC newsletters -- see https://hpc.uni.lu/newsletters/
#
# Available Commands
# ------------------
# make           : Compile files, binaries are generated in the current directory
# make force     : Force the complete re-compilation, even if not needed
# make clean     : Remove backup files (*~) and other generated files
#
############################## Variables Declarations ############################

DIRS       = $(sort $(dir $(wildcard */)))
SRCDIR     = src
NEWSLETTER = $(wildcard ulhpc_newsletter*.pdf)

all: $(DIRS)

release: clean
	@if [ -d "$(SRCDIR)" ]; then \
		$(MAKE) -C $(SRCDIR); \
		echo "==> copying the released PDF"; \
		cp $(SRCDIR)/ulhpc_newsletter*.pdf .; \
	else \
		for d in $(DIRS); do \
			$(MAKE) -C $$d $@; \
		done; \
	fi

%:
	@for d in $(DIRS); do \
		echo "==> processing '$$d'"; \
		$(MAKE) -C $$d $@; \
	done


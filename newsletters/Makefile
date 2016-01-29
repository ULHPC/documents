##################################################################################
# Makefile - Configuration file for GNU make (http://www.gnu.org/software/make/)
# Time-stamp: <Fri 2016-01-29 22:11 svarrette>
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

DIRS = $(sort $(dir $(wildcard */)))

all: $(DIRS)

clean:
	@for d in $(DIRS); do \
		echo "==> cleaning in '$$d'"; \
		$(MAKE) -C $$d $@; \
	done

%:
	@for d in $(DIRS); do \
		echo "==> processing '$$d'"; \
		$(MAKE) -C $$d $@; \
	done

##################################################################################
# Makefile - Configuration file for GNU make (http://www.gnu.org/software/make/)
# Time-stamp: <Mon 2016-02-01 17:42 svarrette>
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

DIRS    = $(sort $(dir $(wildcard */)))
SRCDIR  = src
SRC     = $(wildcard $(SRCDIR)/ulhpc_newsletter*.tex)
PDF     = $(SRC:.tex=.pdf)
# Ghostscript for the help of producing optimized PDF
GS      = $(shell which gs)
GS_OPTS = -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress 


all: $(DIRS)

test:
	@echo "DIRS    = $(DIRS)"
	@echo "SRCDIR  = $(SRCDIR)"
	@echo "SRC     = $(SRC)"
	@echo "PDF     = $(PDF)"
	@echo "GS      = $(GS)"
	@echo "GS_OPTS = $(GS_OPTS)"

# Add a specific 'release' target only if in the appropriate directory, such that
# otherwise, it is just passed to the subdirectory using the generic '%' target
ifneq ($(SRC),)
release: clean
	$(MAKE) -C $(SRCDIR); \
	if [ -n "$(GS)" ]; then \
		echo "==> producing optimized PDF for releasing (thanks Hya for the gs command!) from '`pwd`'"; \
		$(GS) $(GS_OPTS) -sOutputFile=$(shell basename $(PDF)) $(PDF); \
	else \
		echo "==> blank copy of the (non-optimized) PDF from $(SRCDIR)"; \
		cp $(PDF) .; \
	fi
endif

# generic rule -- pass whatever target (incl. none) to each subdirs.
%:
	@for d in $(DIRS); do \
		echo "==> processing '$$d'"; \
		$(MAKE) -C $$d $@; \
	done


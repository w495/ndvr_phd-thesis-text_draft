#!/usr/bin/env make

## ##################################################################
##                           Source Options
## ##################################################################

## 	The name of current paper.
PAPER_NAME=thesis-text

## 	Current directory path.
PAPER_HOME=.local

## 	CVS label.
TAG_LABEL=$(shell git describe --dirty --always)


## -----------------------------------------------
##       TeX Input Source Options:
## -----------------------------------------------

## Input Source Directory.
SOURCE_DIR=$(PAPER_HOME)/src

## Input Source File Base Name.
SOURCE_BASE=$(PAPER_NAME).tex

## Input Source File Full Name.
SOURCE_PATH=$(SOURCE_DIR)/$(SOURCE_BASE)

SOURCES=$(SOURCE_PATH)


## ##################################################################
##                          Latexmk Options
## ##################################################################

## -----------------------------------------------
##       Latexmk Result Options:
## -----------------------------------------------

## Latexmk Output Directory.
#LATEXMK_FLAGS=-pdf -xelatex 
LATEXMK_FLAGS=-xelatex -f -r $(SOURCE_DIR)/.latexmkrc

## Latexmk Output Directory.
LATEXMK_RESULT_DIR=/tmp/latexmk/src

## Latexmk Output File Base Name.
LATEXMK_RESULT_BASE=$(PAPER_NAME).pdf

## Latexmk Output File Full Name.
LATEXMK_RESULT_PATH=$(LATEXMK_RESULT_DIR)/$(LATEXMK_RESULT_BASE)


## -----------------------------------------------
##       Latexmk Stdout Options:
## -----------------------------------------------

## Latexmk Stdout Directory.
LATEXMK_STDOUT_DIR=$(PAPER_HOME)

## Latexmk Stdout File Base Name.
LATEXMK_STDOUT_BASE=$(PAPER_NAME).stdout.log

## Latexmk Stdout File Full Name.
#  LATEXMK_STDOUT_PATH=$(LATEXMK_STDOUT_DIR)/$(LATEXMK_STDOUT_BASE)
LATEXMK_STDOUT_PATH=&1


## -----------------------------------------------
##       Latexmk Stderr Options:
## -----------------------------------------------

## Latexmk Stderr Directory.
LATEXMK_STDERR_DIR=$(PAPER_HOME)

## Latexmk Stderr File Base Name.
LATEXMK_STDERR_BASE=$(PAPER_NAME).stderr.log

## Latexmk Stderr File Full Name.
#  LATEXMK_STDERR_PATH=$(LATEXMK_STDERR_DIR)/$(LATEXMK_STDERR_BASE)
LATEXMK_STDERR_PATH=&2


## ##################################################################
##                           Target Options
## ##################################################################

## -----------------------------------------------
##       Latest Output Target Options:
## -----------------------------------------------

## Output Target Directory.
LATEST_TARGET_DIR=$(PAPER_HOME)/target/latest

## Output Target File Base Name.
LATEST_TARGET_BASE=$(PAPER_NAME).$(TAG_LABEL).pdf

## Output Target File Full Name.
LATEST_TARGET_PATH=$(LATEST_TARGET_DIR)/$(LATEST_TARGET_BASE)


## -----------------------------------------------
##       Rolling Output Target Options:
## -----------------------------------------------

## Output Target Directory.
ROLLING_TARGET_DIR=$(PAPER_HOME)/target/rolling

## Output Target File Base Name.
ROLLING_TARGET_BASE=$(PAPER_NAME).pdf

## Output Target File Full Name.
ROLLING_TARGET_PATH=$(ROLLING_TARGET_DIR)/$(ROLLING_TARGET_BASE)


## ##################################################################
##                             Make Commands
## ##################################################################

papers: $(LATEST_TARGET_PATH) $(ROLLING_TARGET_PATH)
	@ echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m!\e[0m';

$(LATEST_TARGET_PATH): $(LATEXMK_RESULT_PATH)
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	cp -f $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

$(ROLLING_TARGET_PATH): $(LATEXMK_RESULT_PATH)
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	cp -f $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

$(LATEXMK_RESULT_PATH): $(SOURCES)
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	latexmk $(LATEXMK_FLAGS) $< 2>$(LATEXMK_STDERR_PATH) 1>$(LATEXMK_STDOUT_PATH)
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';



clean:
	latexmk -C
	
clean_all:
	latexmk -C

.PHONY: all clean clean_all $(LATEXMK_RESULT_PATH)

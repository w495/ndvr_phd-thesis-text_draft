#!/usr/bin/env make

## ##################################################################
##                           Source Options
## ##################################################################


## 	Current directory path.
PAPER_HOME=.local/vec


## -----------------------------------------------
##       TeX Input Source Options:
## -----------------------------------------------


## Input Source Directory.
SOURCE_DIR=$(PAPER_HOME)

PLAIN_SOURCES=$(shell find $(SOURCE_DIR) -name '*.tex' -type f -printf "%f ")

SOURCES=$(shell find $(SOURCE_DIR) -name '*.tex' -type f)
#SOURCES=$(PLAIN_SOURCES) 


## ##################################################################
##                          Latexmk Options
## ##################################################################

## -----------------------------------------------
##       Latexmk Result Options:
## -----------------------------------------------

## Latexmk Output Directory.
#LATEXMK_FLAGS=-pdf -xelatex 
LATEXMK_FLAGS=-xelatex  -r $(SOURCE_DIR)/.latexmkrc

## Latexmk Output Directory.
LATEXMK_RESULT_DIR=/tmp/latexmk/vec

## Latexmk Output File List (pdf).
LATEXMK_RESULTS=$(addprefix $(LATEXMK_RESULT_DIR)/,$(PLAIN_SOURCES:.tex=.pdf))


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

TARGET_DIR=$(PAPER_HOME)/out

## -----------------------------------------------
##       PDF Target:
## -----------------------------------------------

## Output Normal PDF Directory.
PDF_TARGET_DIR=$(TARGET_DIR)/pdf

## Output PDF File List.
PDF_TARGET=$(addprefix $(PDF_TARGET_DIR)/,$(PLAIN_SOURCES:.tex=.pdf))


## -----------------------------------------------
##       PNG Target:
## -----------------------------------------------

## Output Normal PNG Directory.
PNG_TARGET_DIR=$(TARGET_DIR)/png

## Output PNG File List.
PNG_TARGET=$(addprefix $(PNG_TARGET_DIR)/,$(PLAIN_SOURCES:.tex=.png))


## -----------------------------------------------
##       JPG Target:
## -----------------------------------------------

## Output Normal PNG Directory.
JPG_TARGET_DIR=$(TARGET_DIR)/jpg

## Output PNG File List.
JPG_TARGET=$(addprefix $(JPG_TARGET_DIR)/,$(PLAIN_SOURCES:.tex=.jpg))


## -----------------------------------------------
##       TIFF Target:
## -----------------------------------------------


## Output Normal TIFF Directory.
TIFF_TARGET_DIR=$(TARGET_DIR)/tiff

## Output TIFF File List.
TIFF_TARGET=$(addprefix $(TIFF_TARGET_DIR)/,$(PLAIN_SOURCES:.tex=.tiff))


## -----------------------------------------------
##       EPS Target:
## -----------------------------------------------

## Output Normal EPS Directory.
EPS_TARGET_DIR=$(TARGET_DIR)/eps

## Output EPS File List.
EPS_TARGET=$(addprefix $(EPS_TARGET_DIR)/,$(PLAIN_SOURCES:.tex=.eps))


## -----------------------------------------------
##       PS Target:
## -----------------------------------------------

## Output Normal PS Directory.
PS_TARGET_DIR=$(TARGET_DIR)/ps

## Output PS File List.
PS_TARGET=$(addprefix $(PS_TARGET_DIR)/,$(PLAIN_SOURCES:.tex=.ps))


## ##################################################################
##                             Make Commands
## ##################################################################

vector-images: to-pdf

## -----------------------------------------------
##       Convert to JPG Bitmap
## -----------------------------------------------

to-jpg:$(JPG_TARGET)

$(JPG_TARGET): $(JPG_TARGET_DIR)/%.jpg: $(LATEXMK_RESULT_DIR)/%.pdf
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	convert -density 600 $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

## -----------------------------------------------
##       Convert to Transparent PNG Bitmap
## -----------------------------------------------

to-png:$(PNG_TARGET)

$(PNG_TARGET): $(PNG_TARGET_DIR)/%.png: $(LATEXMK_RESULT_DIR)/%.pdf
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	convert -density 600 $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

## -----------------------------------------------
##       Convert to TIFF Bitmap (For printing)
## -----------------------------------------------

to-tiff:$(TIFF_TARGET)

$(TIFF_TARGET): $(TIFF_TARGET_DIR)/%.tiff: $(LATEXMK_RESULT_DIR)/%.pdf
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	convert -density 600 $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

## -----------------------------------------------
##       Convert to PS Vector Image (Is it right way?)
## -----------------------------------------------

to-ps:$(PS_TARGET)

$(PS_TARGET): $(PS_TARGET_DIR)/%.ps: $(LATEXMK_RESULT_DIR)/%.pdf
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	pdftops $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

## -----------------------------------------------
##       Convert to EPS Vector Image (Is it right way?)
## -----------------------------------------------

to-eps:$(EPS_TARGET)

$(EPS_TARGET): $(EPS_TARGET_DIR)/%.eps: $(LATEXMK_RESULT_DIR)/%.pdf
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	pdftops -eps $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

## -----------------------------------------------
##       Copy PDF
## -----------------------------------------------

to-pdf:$(PDF_TARGET)

$(PDF_TARGET): $(PDF_TARGET_DIR)/%.pdf: $(LATEXMK_RESULT_DIR)/%.pdf
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	mkdir -p $(@D)
	cp $< $@
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';

## -----------------------------------------------
##       Compile TeX
## -----------------------------------------------

$(LATEXMK_RESULT_DIR)/%.pdf: $(SOURCES)
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$<\e[36m ... \e[0m';
	latexmk $(LATEXMK_FLAGS) $^ 2>$(LATEXMK_STDERR_PATH) 1>$(LATEXMK_STDOUT_PATH)
	@echo -e '\e[95m# \e[36mmake \e[33m$@\e[36m from \e[32m$< \e[30m\e[42m DONE \e[0m';


clean:
	latexmk -C
	
clean_all:
	latexmk -C

.PHONY: all clean clean_all to-pdf to-ps to-eps to-png to-tiff to-jpg

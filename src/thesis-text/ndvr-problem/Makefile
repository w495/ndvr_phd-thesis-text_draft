#!/usr/bin/env make

BASE=/home/ndvr/Projects/thethis/active/thesis-text/thesis-text/src

PWD=$(shell pwd)

JOBNAME=$(shell abs2rel ${PWD} $(BASE) | sed  's/\//-/g' )

all:
	echo $(JOBNAME)
	latexmk -jobname=$(JOBNAME)



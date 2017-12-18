#!/usr/bin/env make

#!/usr/bin/env make

## ##################################################################
##                           Source Options
## ##################################################################


## -----------------------------------------------
##       Input Source Options:
## -----------------------------------------------

PAPERS_DIR=src
VECTOR_IMAGES_DIR=vec

## -----------------------------------------------
##       Include Make Files:
## -----------------------------------------------

# include $(VECTOR_IMAGES_DIR)/Makefile
# include $(PAPERS_DIR)/Makefile


## ##################################################################
##                             Make Commands
## ##################################################################

all: vector-images papers

papers: vector-images 
	@echo -e '\e[95m#\e[36m compile papers ... \e[0m';
	@$(MAKE) -C $(PAPERS_DIR) papers;
	@echo -e '\e[95m#\e[36m compile papers \e[30m\e[42m DONE \e[0m';

clean-papers : 
	$(MAKE) -C $(PAPERS_DIR) clean


vector-images: 
	@echo -e '\e[95m#\e[36m compile vector images ... \e[0m';
	@$(MAKE) -C $(VECTOR_IMAGES_DIR) vector-images;
	@echo -e '\e[95m#\e[36m compile vector images \e[30m\e[42m DONE \e[0m';

clean-vector-images : 
	@$(MAKE) -C $(VECTOR_IMAGES_DIR) clean


.PHONY: src src-clean vec vec-clean 
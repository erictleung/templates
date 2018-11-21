# Sample Makefile

# set shell
SHELL := /usr/bin/env bash

## example : This is an example
example :
	echo "Hello, World!"

.PHONY : help example

## help : Help page for Makefile
help :
	@echo ""
	@echo "Usage:"
	@echo -e "\tmake <target>\n"
	@echo -e "Target\t\tDescription"
	@echo -e "------\t\t-----------"
	@grep '## [A-Za-z]* : [A-Za-z]*' $(MAKEFILE_LIST) | sed 's/## //' | sed 's/: /\t\t/'
	
.DEFAULT_GOAL := help

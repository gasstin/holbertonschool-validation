.PHONY: all build clean

build: ## Creates the site.
	hugo > /dev/null 2>&1
	touch awesome-api

clean: ## ERROR: No comment found for target clean in ./Makefile
	rm -fr dist awesome-website.zip

lint: ## update files README.md and DEPLOY.md to markdownlint
	npm install -g markdownlint-cli
	markdownlint --fix DEPLOY.md

help: ## shows commands
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

unit-tests: ## ERROR: No comment found for target unit-tests in ./Makefile
	touch coverage-units.out

integration-tests: ## ERROR: No comment found for target integration-tests in ./Makefile
	touch coverage-integrations.out

build-docker: ## build a docker image from Dockerfile
	docker build -t awesome:build ./build
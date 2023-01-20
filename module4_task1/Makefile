.PHONY: all build clean

build: ## Creates the site.
	hugo > /dev/null 2>&1
	touch awesome-api

clean: ## ERROR: No comment found for target clean in ./Makefile
	rm -fr dist awesome-website.zip

post: ## Creates a post with given POST_NAME and POST_TITLE.
	hugo new posts/${POST_NAME}.md
	sed -i '/title/c\title: "${POST_TITLE}"' content/posts/${POST_NAME}.md

package: ## produces a file awesome-website.zip, containing the binary awesome-api and the directory dist
	zip -r awesome-website.zip dist/ awesome-api

lint: ## update files README.md and DEPLOY.md to markdownlint
	curl --silent --location -fsSL https://deb.nodesource.com/setup_16.x | bash -
    	apt-get install -y nodejs
	npm install -g markdownlint-cli || true
	markdownlint --fix DEPLOY.md

help: ## shows commands
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

unit-tests: ## ERROR: No comment found for target unit-tests in ./Makefile
	touch coverage-units.out

integration-tests: ## ERROR: No comment found for target integration-tests in ./Makefile
	touch coverage-integrations.out

validate: ## ERROR: No comment found for target validate in ./Makefile

build-docker: ## build a docker image from Dockerfile
	docker build --no-cache -t awesome:build -f ./build/Dockerfile .

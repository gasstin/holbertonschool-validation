build : ## Generates the website
	hugo > /dev/null 2>&1

post : ## Creates a new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: \"$(POST_TITLE)\"/g' ./content/posts/$(POST_NAME).md

clean : ## ERROR: No comment found for target clean in ./Makefile
	rm -rf dist/ awesome-website.zip

package: ## produces a file awesome-website.zip, containing the binary awesome-api and the directory dist
	zip -r awesome-website.zip dist awesome-api

lint: ## update file to markdownlint
	markdownlint README.md DEPLOY.md

help: ## shows commands
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:	## build: Generates the website
	hugo > /dev/null 2>&1

clean:	## Clean the site's directory
	rm -fr dist

post:	## post: Creates a new post
	hugo new posts/${POST_NAME}.md
	sed -i '/title/c\title: "${POST_TITLE}"' content/posts/${POST_NAME}.md

help:	## help: Display the help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


build :  
## build: Generates the website
	hugo > /dev/null 2>&1

post : 
## post: Creates a new post
	hugo > /dev/null 2>&1
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: \"$(POST_TITLE)\"/g' ./content/posts/$(POST_NAME).md

clean : ## Clean the site's directory
	rm -rf dist/

help : 
## help: Display the help
	@sed -n 's/^##//p' ${MAKEFILE_LIST}

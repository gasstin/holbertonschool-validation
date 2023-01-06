build :
## build: Generates the website
	hugo > /dev/null 2>&1

post :
## post: Creates a new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: \"$(POST_TITLE)\"/g' ./content/posts/$(POST_NAME).md

clean :
## clean: Clean the site's directory
	rm -rf dist/ awesome-website.zip

package: 
## package: produces a file awesome-website.zip, containing the binary awesome-api and the directory dist
	zip -r awesome-website.zip dist
	zip -u awesome-website.zip awesome-api
help :
## help: Display the help
	@sed -n 's/^##//p' ${MAKEFILE_LIST}

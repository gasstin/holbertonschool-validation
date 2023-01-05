.PHONY: build clean post

build :
	hugo new site dist
	hugo mod init github.com/gasstin/module1_task1/dist
	echo "theme = \"ananke"\" >> dist/config.toml
	cd dist/themes && git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git
	mv dist/themes/gohugo-theme-ananke dist/themes/ananke
	cd ..
	hugo

post:
	cd dist/ && hugo new posts/$(POST_NAME).md

clean :
	rm -rf dist/ go.mod public/ resources/



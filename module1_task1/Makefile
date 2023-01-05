.PHONY: build clean post

build :
	hugo new site module1_task1
	hugo mod init github.com/gasstin/module1_task1
	echo "theme = \"ananke"\" >> module1_task1/config.toml
	echo "publishDir = \"dist/\"" >> module1_task1/config.toml
	cd module1_task1/themes && git clone https://github.com/theNewDynamic/gohugo-theme-ananke.git
	mkdir module1_task1/themes/ananke
	cd module1_task1/themes/gohugo-theme-ananke && mv * ../ananke/
	cd module1_task1/themes && rm -rf gohugo-theme-ananke
	cd ..
	hugo

post:
	cd dist/ && hugo new posts/$(POST_NAME).md

clean :
	rm -rf dist/ go.mod public/ resources/



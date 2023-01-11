# README.md

## Prerequisites
* Install Go (version >= 1.14)
* Install Hugo (extenden edition recomendend)
* Install Git
* Install GNU Make (version 3.81+)

## Lifecycle
1. Create the hugo new site.
2. Clone the theme in theme directory.
3. Add the theme to `config.toml` file.
4. Use `make build ` to create the webpage.
5. Use `make post` to create a new post. `post` use two variables: `PATH_TITLE, PATH_NAME`  
  like information to the post.
6. Use `make package` create a zip with the awesome-api binary file.
7. Use `make lint` to update README.md and DEPLOY.md to lint
8. Use `make clean` to clean the dist directory.

## Not implemented yet:
* unit-tests
* integration-tests
* validate

## Workflow
* Clone the repository.
* Check the clonation with `make help` command.
* Use Docker image golang:1.15.8-buster for create a work enviroment

## Build Workflow
* Modified `setup.sh` to install requeried tools
* Clone the repository.
* Use `make build`

## GitHub Tag
* GitHub Tag now present to show the working version

## Draft GitHub Release
* Generate a changelog based on the merged Pull Request’s titles.

## Netlify Static Website
* Host the static website with Netlify.

Use `make help` if you need help

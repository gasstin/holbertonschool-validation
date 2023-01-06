## Prerequisites
* Install Go (version >= 1.14)
* Install Hugo (extenden edition recomendend)
* Install Git
* Install GNU Make (version 3.81+)

--

## Lifecycle
1. Create the hugo new site.
2. Clone the theme in theme directory.
3. Add the theme to `config.toml` file.
4. Use `make build ` to create the webpage.
5. Use `make post` to create a new post. `post` use two variables: `PATH_TITLE, PATH_NAME` like information to the post.
5. Use `make clean` to clean the dist directory.

--

## Workflow
* Clone the repository.
* Check the clonation with `make help` command.
Use `make help` if you need help

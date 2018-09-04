# mg_postman

Missguided Postman Tests

Each request suite is separated into its own folder. 

Postman suites can be exported as `.json` files. Missguided use git to store and version control our tests. 

## Updating tests

Once tests have been modified in the postman GUI. Simply export both the Requests folder as a json v2.1 then upload to git.

If you modify the environment values to work locally, __do not__ export them.

Changes to environment variables should be treated with caution as our CI tool does basic string replace commands to inject environment variables.

New variables should be:

```
{ "some_env_var" : "DEFAULT_some_env_var" }
```

This pattern should help ease the pain of using `sed` commands for CI.

Do not vary from this pattern.

## Executing on your local machine

To use with postman GUI:

* Download Postman Desktop Client => Latest Version
* Pull Repo => Postman libraries are all stored as JSON files
* Import request and environment file into Postman
* Add required local values into environment variables, newer versions of postman use a 'current value' pattern, so just change this. DO NOT EXPORT changes to default values.

To run on the command line:

``` bash
# Install newman via npm (globally)

$ npm install -g newman

# To run a file
$ newman run {{filename.json}} -e {{environment.json}}
# Example
$ newman run MissguidedServices.postman_collection.json -e MissguidedServiceEnvironment.postman_environment.json
```

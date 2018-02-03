# Skeleton

- Clone this repo into a new directory

- Delete .git/

- Create a new git repository on github.com

- Change permissions of the repository to appropriate values

## Setting up your GET method

- Replace occurrences of `skeleton` in `.circleci/config.yml` with the new repo name

- Replace all occurrences of `skeleton-get` with an appropriate name

- Replace all occurrences of `skeleton` with your resource name under the`./vars` directory

- Rename the `skeleton-api-endpoints` to the new endpoint or mini service name for the repo

- Push changes to git

- Add project in CircleCI

- Add environment variables and AWS credentials to circleCI project

- Save the AWS credentials securely in the shared secure store

## Adding a new method

- Copy the `skeleton-get` directory and rename to the method you want to add

- Change the default value of the `path_part` variable in `./{method}/infrastructure/variables.tf`

- Copy unittest_get and build_get in `.circleci/config.yml`


## Adding a new alias

- Copy `./aliases/tf-state-get.tf` and rename to `tf-state-{method}.tf`

- Adjust the `key` variable within `./aliases/tf-state-{method}.tf`

- Add a new alias in `aliases.tf`

- Add a new lambda permission in `permissions.tf`, be sure to update the method i.e. `/*/GET` included in the source arn.

# Skeleton

The purpose of this project is to provide a reusable deployment pipeline for AWS Lambda functions and sit them behind an existing AWS API Gateway,
such as a gateway built by the [deploy-infrastructure](https://github.com/MattPuzey/deploy-infrastructure) project.
The repo prescribes a project structure and scripting framework the pipeline leverages to deploy necessary infrastructure with Terraform and to promote lambda versions
through environments when code changes are introduced. This structure follows the philosophy that services can be extended easily when component folders represent 
discrete features which are encapsulated by a single directory that contains application code and infrastructure code, and so on.
   
The repository relies on CircleCi, so a basic understanding of Circle and [account setup](https://circleci.com/docs/1.0/getting-started/) is required.

## How to get started with this project
     

- Clone this repo into a new directory
- Delete .git/
- Create a new git repository on [github.com]()
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

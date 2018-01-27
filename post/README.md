# create-iak

This directory contains all the code and infrastructure required to modify, test and deploy the create iak lambda.

## Creating a create-iak stack

Each lambda should only be deployed via the circleci pipeline as described within the .circleci config.

#### Prerequisites
This infrastructure deployment of this lambda requires the following prerequisite infrastructure from the infrastructure repo to be deployed:

```
api/api-lambda-role
lambda-artifacts
```
The deployment of this infrastructure should also be handled by the pipeline such that changes are run in when they exist, conversely infrastructure will be untouched if the change set for it is empty.

#### Running

```
aws cloudformation deploy
--stack-name create-iak
--template-file create-iak.json
--parameter-overrides LambdaArtifactName=<zip_name> --profile azcard
```
The pipeline will name each zip by the commit hash and store it in the artifacts bucket under a named folder for this lambda i.e. create-iak.

An alias can be "ran in" to repoint a name (e.g. test) to a new version. This technique should be used as the mechanism for promoting our lambda code through environments and should also be handled by the pipeline:

```
aws cloudformation deploy
--stack-name create-iak-alias
--template-file alias.json
--parameter-overrides LambdaVersion=1 StageName=Test
--profile azcard
```

A Lambda does not need to be deployed into an environment. Rather, we define a number of aliases under  a lambda function that each represent the state of the function in one environment. Crucially each alias can point to different version. Underlying lambda containers for different versions of one lambda are physically unrelated.

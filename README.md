# Terraform Template

<h1 align="center"> Virtuecloud </h1> <br>
<p align="center">
  <a href="https://virtuecloud.io/">
    <img alt="Virtuecloud" title="Virtuecloud" src="https://virtuecloud.io/assets/images/VitueCloud_Logo.png" width="450">
  </a>
</p>

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Secrets](#secrets)

## Introduction

This is a template for the complete Initial Terraform setup for a Project to start.

## Features

Some features of this template are:

* It contains a bash file to create a S3 bucket and Dynamodb for the state locking in which the names of both are stored in secrets and secrets are used in envs and this env are called in bash file.
* It contains the workflow for running the bash file and terraform which uses the actions.
* There are two workflows in which terraform apply runs on manual trigger and another one for init and plan runs everytime the code is pushed or merged in main branch.
* While running Terraform init a new Terraform workspace is create whose name is given by Environment variable whose value is the branch name.
* We have also configured the s3 backend in backend.tf for storing the state file.
* There is .gitignore file which consists of all extensions to be ignored while pushing the code to github.

## Secrets

* All the inputs here are stored in secrets which are configurable

| Inputs  | Required | Default | Description |
|---------|----------|---------|-------------|
|AWS_ACCESS_KEY_ID|true| |For accessing AWS console|
|AWS_SECRET_ACCESS_KEY|true| |For accessing AWS console|
|BUCKET_NAME|true| |Name of the bucket getting created for backend.Provide a name with tfstate suffix to it so that it can be easily recognized as a statebucket|
|AWS_REGION|true| |AWS region to deploy your app|
|TABLE_NAME|true| |Dynamodb Table Name for state locking Provide a name with tfstate suffix so that it can be easily recognized|





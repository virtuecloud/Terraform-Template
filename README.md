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
All you have to do is clone this and use by providing some inputs value which are needed.

## Features

Some features of this template are:

* It contains a bash file to create a S3 bucket and Dynamodb for the state locking.
* It contains the workflow for running the bash file and terraform which uses the actions.
* There are two workflows in which terraform apply runs on manual trigger and another one for init and plan runs everytime the code is pushed or merged in main branch.
* We have also configured the s3 backend in backend.tf for storing the state file.
* There is .gitignore file which consists of all extensions to be ignored while pushing the code to github.

## Secrets

* All the inputs here are stored in secrets which are configurable

| Inputs  | Required | Default |
|---------|----------|---------|
|AWS_ACCESS_KEY_ID|true| |
|AWS_SECRET_ACCESS_KEY|true| |
|CLIENT_NAME|true| |
|BUCKET_NAME|true| |
|BUCKET_REGION|true| |
|TABLE_NAME|true| |
|ENVIRONMENT|true| |




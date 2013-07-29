#!/bin/bash

##This is simple script to test with the sinatra application
## inputs
## $0 --cmd name
## $1 --path to app
## $2 --environment to deploy {devtest, qa, staging}
## $3 --branch
## $4 --deploy_type

##change dir to ::: cd <path_2_app_name>
cd ~/sites/$1
echo -e "\E[32;40m ok entering to $1 directory. i.e,\n $(pwd)"

##now lets pull the latest changes
git pull
#git checkout -b $3

##execute the deploy command
bundle exec cap $2 deploy

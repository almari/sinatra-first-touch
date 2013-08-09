#!/bin/bash

##This is simple script to test with the sinatra application
## inputs
## $0 --cmd name
## $1 --path to app
## $2 --environment to deploy {devtest, qa, staging}
## $3 --branch


##change dir and start deployment
if [ -d ~/gitTesting/ROR/apps/$1 ]; then
    echo -e "\e[32m ok, I found \e[0m\e[37m\e[42m\e[1m$1\e[0m"
    cd ~/gitTesting/ROR/apps/$1


    ##now lets pull the latest changes
    git checkout master
    git pull

    branch_name=${3:-'master'}
    git checkout $branch_name
    echo -e "\e[7mSwitched to $branch_name branch\e[0m"


    deploy_type='deploy'
    #if [ "$4" = 'setup' ]
    #then
    #    deploy_type='deploy:setup'
    #fi


    ##execute the deploy command and logging it to the /tmp/deploy.log
    bundle install >/tmp/deploy.log
    echo '--------------------------------------------------------------------------------------------------------------------------------------'>>/tmp/deploy.log

    bundle exec cap $2 deploy -S branch=$branch_name >>/tmp/deploy.log
    echo '--------------------------------------------------------------------------------------------------------------------------------------' >> /tmp/deploy.log
    echo "Awesome !! Everything deployed like a bo\$\$"
    exit 1

else
    echo -e "\e[31m\e[1mSorry BO\$\$, I know nothing about $1\e[0m\n Daal mein kuch kala hai ;)"

fi

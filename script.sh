#!/bin/bash

##This is simple script to test with the sinatra application

#echo -e "\E[31;40m envokedCmd: $1\n"
echo -e "envokedCmd: $1\n"
#echo -e "\E[36;40m..."
${1}
#echo -e "\E[33;40m $(cowsay `fortune`)\n******************************************"
#echo -e "\E[36;40m `ls -la`\n \E[31;40m ..."

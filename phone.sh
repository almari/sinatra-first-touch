#!/bin/bash


#first process input name
name=$(echo "${1}"|sed 's/ /\\\|/g');

#echo $name

#query the file for phone no
#sed -n "/$name/Ip" contact.csv.save|sed -r 's/([^0-9]*([0-9]*)){2}.*/\0/g'|cut -d'.' -f2,3,4,5,6,7



sed -n "/$name/Ip" basecamp.contacts|sed -r 's/([^0-9]*([0-9]*)){2}.*/\0/g'|cut -d'.' -f2,3,4,5,6,7

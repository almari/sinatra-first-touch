#!/bin/bash

#$1 -- input file to search
#cd /home/shared/DigitalLibrary

#take a tree dump
tree /media/ -hivfP "*.mp4|*.flv|*.mov|*.avi" |sed -n '/\(\.mp4\)\|\(\.flv\)\|\(\.mov\)\|\(\.avi\)/p' > /tmp/tree.dump
echo 'ʎpɐǝᴚ sı dW⋂p :D'

#grep -i "${1}" /tmp/tree.dump > /tmp/hubot_srch.dump
#cat /tmp/hubot_srch.dump


#find the files and dump it.
#find /media/apple/ -type f \( -name '*.avi*' -o -name '*.flv' \)  -exec ls -la {} \; > /tmp/hubot_srch.dump

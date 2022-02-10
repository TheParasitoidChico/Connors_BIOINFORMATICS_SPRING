#!/bin/sh

#usage: run ./push_.sh pushed.file
#to run from any directory, conveniently, put
#it in the hom directory, and run ~/push_sh pushed.file
#I imagine that works... maybe GIT will make it weird.

echo $1 #my first argument from the
# command line will be the file I want so push
echo "Enter commit comment"
read i
git add $1  # git add my push file
git commit -m "automated push, but also... ${i}." # I'm too lazy to figure out how to make a custom message
# scratch that. 
git push # push the darn thing.
# You're still prompted for
# a password and token,
# but who am I to mess with security?

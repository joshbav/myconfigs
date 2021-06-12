#!/bin/bash

# Backups up some of my ~/. files

# TODO: Fork what they did: https://github.com/SuperPaintman/dotfiles


echo
echo Creating encrypted backup of VS Code settings, enter password
mv vscode.7z /tmp 2>&1
7z a -t7z -p vscode ~/.vscode/settings.json -r

cp ~/.bash_profile .
cp ~/.vimrc .
cp ~/.bash_aliases .
cp ~/.bashrc .

#echo Now doing SSH config, but I stopped using this file a while ago
#echo enter password if asked
#7z a -t7z -p sshconfig ~/.ssh/config

# TODO iterm config file
# zoom config file?
# git config encrypted though?

# don't need kubeconfig backed up using this method, because I won't curl it
# to a new workstation, right?  same with cloud provider CLIs?


echo
echo
echo Adding all files in repo and pushing to git


# how I changed it to ssh:  git remote set-url origin git@github.com:joshbav/<repo name>.git
git config user.name “joshbav” --local
git config user.email "joshbav@users.noreply.github.com" --local
git add -A
git commit -m "Scripted commit $(date +%d-%b-%Y-%I:%M:%S%p)"
git push -u origin master

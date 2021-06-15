#!/bin/bash

# Backups up some of my ~/. files to enable easy swapping of workstations

# TODO: Fork what they did: https://github.com/SuperPaintman/dotfiles

echo
echo
echo Creating encrypted backup of much of ~
echo Use the long dedicated 7zip password
echo
mv secretstuff.7z /tmp 2>&1

# I'm sure I'll forget to add new stuff here, D'OH! in advance
7z a -t7z -p -r secretstuff ~/aws-personal.pem ~/.vscode ~/.kube ~/.docker ~./gnupg ~./vmware ~./pki ~./config ~./ssr ~./zoom ~./ssh ~./gitconfig /etc/pulse/*.conf

# to extract use 7z e  (it will preserve paths)

cp ~/.bash_profile .
cp ~/.vimrc .
cp ~/.bash_aliases .
cp ~/.bashrc .

echo
echo
echo Adding all files in repo and pushing to git


# how I changed it to ssh:  git remote set-url origin git@github.com:joshbav/<repo name>.git
git config user.name “joshbav” --local
git config user.email "joshbav@users.noreply.github.com" --local
git add -A
git commit -m "Scripted commit $(date +%d-%b-%Y-%I:%M:%S%p)"
git push -u origin master

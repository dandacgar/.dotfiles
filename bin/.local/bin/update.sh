#!/bin/bash

# Homebrew

brew update
brew upgrade
brew upgrade --cask --greedy

brew autoremove
brew cleanup
brew bundle dump --force

# Stow 

dotfile_path="$HOME/.dotfiles"
cd "$dotfile_path"

find -E . -type d -depth 1 -regex "^\./[^.].*" | sed 's?^\./??' | xargs -n 1 stow

# Git

last_update="$(git log -1 --pretty='format:%cd' --date='format:%m-%d-%Y')"

read -p "Last update was ${last_update}. Would you like to update repository? [y/n]" -r commit_and_push
if [[ $commit_and_push =~ ^[Yy]$ ]]; then
	git add .
	read -p "Enter commit message: " commit_msg
	git commit -m "$commit_msg"
	git push origin main
fi








#!/bin/bash

sudo apt install -y zplug

ln -s ~/.dotfiles/zshrc ~/.zshrc

cd ~ && curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "source ~/.zshrc && zplug install" | zsh

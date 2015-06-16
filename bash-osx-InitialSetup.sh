#!/bin/bash

# Remove all the symbolic links in place
rm -ir ~/.bash*
rm -ir ~/.vim*
rm -ir ~/.inputrc
rm -ir ~/.screenrc
rm -ir ~/.tmux*
rm -if ~/.ssh/config
rm -if ~/.gitconfig
rm -if ~/.gitignore_global

# Creating symbolic links for bash
if [ -f ~/jdotfiles/.bashrc ];
then
    ln -s ~/jdotfiles/.bashrc ~/.bashrc
    echo "~/.bashrc soft-linked successfully"
else
    echo "~/.bashrc soft-linked unsuccessfully"
fi

if [ -f ~/jdotfiles/.bash_profile ];
then
    ln -s ~/jdotfiles/.bash_profile ~/.bash_profile
    echo "~/.bash_profile soft-linked successfully"
else
    echo "~/.bash_profile soft-linked unsuccessfully"
fi

# Creating symbolic links for vim
if [ -d ~/jdotfiles/.vim ];
then
    ln -s ~/jdotfiles/.vim/ ~/.vim
    echo "~/.vim soft-linked successfully"
else
    echo "~/.vim soft-linked unsuccessfully"
fi

if [ -f ~/jdotfiles/.vimrc ];
then
    ln -s ~/jdotfiles/.vimrc ~/.vimrc
    echo "~/.vimrc soft-linked successfully"
else
    echo "~/.vimrc soft-linked unsuccessfully"
fi

# Creating symbolic links for inputrc
if [ -f ~/jdotfiles/.inputrc ];
then
    ln -s ~/jdotfiles/.inputrc ~/.inputrc
    echo "~/.inputrc soft-linked successfully"
else
    echo "~/.inputrc soft-linked unsuccessfully"
fi

# Creating symbolic links for screen
if [ -f ~/jdotfiles/.screenrc ];
then
    ln -s ~/jdotfiles/.screenrc ~/.screenrc
    echo "~/.screenrc soft-linked successfully"
else
    echo "~/.screenrc soft-linked unsuccessfully"
fi

# Creating symbolic links for ssh config
if [ -f ~/jdotfiles/.ssh/config ];
then
    ln -s ~/jdotfiles/.ssh/config ~/.ssh/config
    echo "~/.ssh/config soft-linked successfully"
else
    echo "~/.ssh/config soft-linked unsuccessfully"
fi

# Creating symbolic links for git global ignores
if [ -f ~/jdotfiles/.gitignore_global ];
then
    ln -s ~/jdotfiles/.gitignore_global ~/.gitignore_global
    echo "~/.gitignore_global soft-linked successfully"
else
    echo "~/.gitignore_global soft-linked unsuccessfully"
fi

# Creating symbolic links for git configurations
if [ -f ~/GoogleDrive/gdotfiles/.gitconfig ];
then
    ln -s ~/jdotfiles/.gitconfig ~/.gitconfig
    echo "~/.gitconfig soft-linked successfully"
elif [ -f ~/jdotfiles/.gitconfig ];
then
    ln -s ~/jdotfiles/.gitconfig ~/.gitconfig
    echo "~/.gitconfig soft-linked successfully"
else
    echo "~/.gitconfig soft-linked unsuccessfully"
fi

# Creating symbolic links for npm configs
if [ -f ~/jdotfiles/.npmrc ];
then
    ln -s ~/jdotfiles/.npmrc ~/.npmrc
    echo "~/.npmrc soft-linked successfully"
else
    echo "~/.npmrc soft-linked unsuccessfully"
fi

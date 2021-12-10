#!/bin/sh

cr="\033[1;31m"
cg="\033[1;32m"
cb="\033[1;34m"
program="rxfetch"
printf "${cr}"

case $1 in 
  *u*) sudo rm -r /usr/local/bin/$program && printf "${cg}[*] $program Uninstalled\n${cr}";;
  *i*) cp -r ttf-material-design-icons/* $HOME/.fonts/ && printf "${cg}[*] Font's Installed\n${cr}"
    sudo cp $program /usr/local/bin/$program && printf "${cg}[*] $program Installed\n${cr}";;
  *) printf "${cg}Usage: ./install.sh ${cb}[i|u]${cb}
    i:${cg} Install
    ${cb}u:${cg} Uninstall\n${cr}"
esac

#!/bin/sh

cr="\033[1;31m"
cg="\033[1;32m"
program="rxfetch"
printf "${cr}"
os=$(uname -o)
case ${os} in
  Android) font_dest="$HOME/.termux/fonts/."
    cp $program /usr/local/bin/$program && printf "${cg}[*] $program Installed\n${cr}";;
  *) font_dest="$HOME/.fonts/."
    sudo cp $program /bin/$program && printf "${cg}[*] $program Installed\n${cr}";;
esac
mkdir -p $font_dest
cp -r ttf-material-design-icons/* $font_dest && printf "${cg}[*] Font's Installed\n${cr}"

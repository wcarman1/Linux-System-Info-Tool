#!/bin/bash
#Author: Walter Carman
#Purpose: List System Information
#This Script will not make any changes to your systems configuration. It will only list the System Information

: ${HOSTNAME?} ${USER?} ${HOME?}
  echo "$(tput setaf 1)$(tput bold)OS Release$(tput sgr 0)"
lsb_release -idrc 
  echo "$(tput setaf 1)$(tput bold)Currect CPU Architecture $(tput sgr 0)(X86_64=64bit i686=32bit)"
uname -m
  echo "$(tput setaf 1)$(tput bold)Your CPU Architecture Capabilities$(tput sgr 0)"
  lscpu | grep 'CPU op-mode'
  echo "$(tput setaf 1)$(tput bold)Hostname: $(tput sgr 0)$HOSTNAME"
  echo "$(tput setaf 1)$(tput bold)Username: $(tput sgr 0)$USER"
  echo "$(tput setaf 1)$(tput bold)Home directory: $(tput sgr 0)$HOME"
  echo
  echo "$(tput setaf 1)$(tput bold)Network Interface(s) Configuration$(tput sgr 0)"
  echo
ifconfig -a
  echo "$(tput setaf 1)$(tput bold)Static Routes$(tput sgr 0)"
route -n
  echo
read -p "$(tput setaf 1)$(tput bold)Press Return to Close...$(tput sgr 0)"



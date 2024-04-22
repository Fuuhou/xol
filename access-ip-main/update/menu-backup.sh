#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 
###########- END COLOR CODE -##########

MYIP=$(curl -sS ipv4.icanhazip.com)

red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}             • BACKUP PANEL MENU •             ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1 $NC   ${COLOR1}[01]${NC} • BACKUP VPS      ${COLOR1}[03]${NC} • BACKUP API    $COLOR1 $NC"
echo -e " $COLOR1 $NC   ${COLOR1}[02]${NC} • RESTORE VPS     ${COLOR1}[04]${NC} • RESET API     $COLOR1 $NC"
echo -e " $COLOR1 $NC                                               $COLOR1 $NC"
echo -e " $COLOR1 $NC   ${COLOR1}[00]${NC} • GO BACK${NC}                              $COLOR1 $NC"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                • XolPanel •                 $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
01 | 1) clear ; backup ;;
02 | 2) clear ; restore ;;
03 | 3) clear ; menu3 ;;
04 | 4) clear ; menu4 ;;
00 | 0) clear ; menu ;;
*) clear ; menu-backup ;;
esac

       
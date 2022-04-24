#!/bin/sh
# ###########################################
# SCRIPT : DOWNLOAD AND INSTALL Levi45MulticamManager  #
# ###########################################
# Command: wget https://raw.githubusercontent.com/emil237/levi45multicammanager/main/installer.sh -O - | /bin/sh
#
# ###########################################
echo "***********************************************************************************************************************"
# Config script #
TMPDIR='/tmp'
VERSION='9.5'
MY_URL='https://raw.githubusercontent.com/emil237/levi45multicammanager/main'
MY_IPK="levi45multicammanager_9.5_all.ipk"
MY_DEB="levi45multicammanager_9.5_all.deb"
####################
MY_EM='============================================================================================================'
#  Remove Old Plugin  #
echo "   >>>>   Remove old version   "

rm -rf /usr/lib/enigma2/python/Plugins/Extensions/Levi45MulticamManager

#################################
    
###################
echo "============================================================================================================================"
 echo " DOWNLOAD AND INSTALL PLUGIN "

echo "   Install Plugin please wait "

cd /tmp 

set -e
     wget "$MY_URL/$MY_IPK"
  wait
     wget "$MY_URL/$MY_DEB"

if which dpkg > /dev/null 2>&1; then
		dpkg -i --force-overwrite $MY_DEB; apt-get install -f -y
	else
		opkg install --force-reinstall $MY_IPK
	fi
echo "============================================================================================================================"
set +e
cd 
wait
rm -f /tmp/$MY_IPK
rm -f /tmp/$MY_DEB
	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4;                          
echo "$MY_EM"
###################                                                                                                                  
echo " your Device will RESTART Now " 
echo "**********************************************************************************"
wait
init 4
wait
init 3
exit 0







































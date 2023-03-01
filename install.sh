#!/bin/bash
#
################################################
#                                              #
#        Por: Ronualdo JSA - PU4RON            #
#                                              #
#            Janauba/MG - Brasil               #
#                                              #
################################################
#

clear
echo -e "\033[01;37m****************************************\033[00;37m"
echo -e "\033[01;37m*                                      *\033[00;37m"
echo -e "\033[01;37m*  \033[01;33m    RONUALDO, PU4RON - BRASIL\033[00;37m       *"
echo -e "\033[01;37m*                                      *\033[00;37m"
echo -e "\033[01;37m*\033[01;33m   pYSF3 C4FM Multi Streams [DG-ID] \033[00;37m  *"
echo -e "\033[01;37m*                                      *\033[00;37m"
echo -e "\033[01;37m****************************************\033[00;37m"
echo ""
echo ""

echo ""
echo ""
read -p "* Continuar? (S/N) " -n 1 -r
case "$REPLY" in 

  s|S ) echo "" ;;
  y|Y ) echo "" ;;
  n|N ) exit 0 ;;
    * ) exit 0 ;;   
esac
echo ""
mount -o remount,rw /  >/dev/null 2>&1

echo ""
echo "* Estruturando, adicionando e ativando as ferramentas..."
echo ""
sleep 2

dgid="/usr/local/sbin/dg-id"
monitor="/usr/local/sbin/monitor_tg"
diretorio="/home/pi-star/dg-id"
service="/lib/systemd/system/dg_id.service"


if [ -f "$dgid" ]; then                                          
   sudo rm ${dgid}
   sudo cp /home/pi-star/dg-id/dg-id  $dgid
   sudo chmod 777 $dgid
   sudo chmod +x $dgid

else
   sudo cp /home/pi-star/dg-id/dg-id  $dgid
   sudo chmod 777 $dgid
   sudo chmod +x $dgid
 fi



if [ -f "$monitor" ]; then                                          
   sudo rm ${monitor}
   sudo cp /home/pi-star/dg-id/monitor_tg  $monitor
   sudo chmod 777 $monitor
   sudo chmod +x $monitor
else
   sudo cp /home/pi-star/dg-id/monitor_tg  $monitor
   sudo chmod 777 $monitor
   sudo chmod +x $monitor
 fi


if [ -f "$service" ]; then
   sudo systemctl stop dg_id.service > /dev/null 2>&1
   sleep 2
   sudo systemctl disable dg_id.service > /dev/null 2>&1
   sudo rm ${service}
   sudo cp /home/pi-star/dg-id/dg_id.service  $service
   sudo chmod 777 $service
   sudo systemctl enable dg_id.service > /dev/null 2>&1
   sleep 2
   sudo systemctl start dg_id.service > /dev/null 2>&1
else
   sudo cp /home/pi-star/dg-id/dg_id.service  $service
   sudo chmod 777 $service
   sudo systemctl enable dg_id.service > /dev/null 2>&1
   sleep 2
   sudo systemctl start dg_id.service > /dev/null 2>&1
 fi


echo -e "* \033[01;32mFim! \033[01;37m"
sleep 2
echo ""

cd /home/pi-star
sudo chmod 777 /home/pi-star/dg-id
sudo chmod 777 /home/pi-star/dg-id/*
sudo rm -R /home/pi-star/dg-id
mount -o remount,ro /  >/dev/null 2>&1

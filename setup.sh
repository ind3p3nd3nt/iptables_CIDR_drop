#!/bin/bash
clear;
echo Anti internet nuisance filter by independent.;
echo https://github.com/independentcod/iptables_CIDR_drop;
echo Twitter and Instagram: @independentcod;
echo Facebook: https://fb.me/remi.girard2;
echo LinkedIn: https://rebrand.ly/1091c;
echo "---IMPORTANT--- If you do not wish to block Google (because blocking Google will break viewing many websites) Simply delete first line in CIDR.txt and execute setup.sh";
echo "---TIP--- You should replace your DNS nameserver from 8.8.8.8 & 8.8.4.4 to 1.1.1.1 & 1.0.0.1 to avoid Google tracking your DNS queries.";
echo "---TRICK--- If you have a problem connecting a certain website, go to https://hackertarget.com/find-dns-host-records/ find all corresponding CIDR, delete them and re-run setup.sh.";
read -r -p "Do you want to continue? [Y/n] " input 
case $input in ([yY][eE][sS]|[yY])
sudo apt update && sudo apt install iptables -y;
echo Flushing INPUT and OUTPUT tables.;
sudo iptables -F INPUT;
sudo iptables -F OUTPUT;
echo Now adding CIDR IP blocks to iptables.;
for i in `cat CIDR.txt`; do sudo iptables -I OUTPUT -s $i -j DROP | sudo iptables -I INPUT -s $i -j DROP | echo $i was successfully added to iptables configuration. ; done;
echo Saving iptables configuration permanently.;
sudo iptables-save >config.log;
echo Configuration log file generated to ./config.log;
echo ALL DONE! Enjoy blocking most internet nuisances.;
esac

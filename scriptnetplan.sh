#!/bin/bash
# Creates a backup
cp /etc/netplan/01-netcfg.yaml /etc/netplan/01-netcfg.yaml.bk_`date +%Y%m%d%H%M`
# Changes dhcp from 'yes' to 'no'
sed -i "s/dhcp4: yes/dhcp4: no/g" /etc/netplan/01-netcfg.yaml
staticip=$1
gatewayip=$2
netcfg=$3
#res=$4

echo
cat > /etc/netplan/01-netcfg.yaml <<EOF
network:
  version: 2
  renderer: networkd
  ethernets:
    $netcfg
      addresses: [ $staticip ]
      gateway4: $gatewayip
EOF
sudo netplan apply

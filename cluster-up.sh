#!/bin/bash

echo "[*] Starting nginx docker container"
sudo systemctl stop apache2
sudo docker start 82b5d633f086
echo "[*] Configuring bridge network"
sudo sh /home/veeru/k8s/br0-nat.sh
echo "[*] Starting VM m1"
virsh start m1
sleep 10
echo "[*] Starting VM m2"
virsh start m2
sleep 10
echo "[*] Starting VM n1"
virsh start n1
sleep 10
echo "[*] Starting VM n2"
virsh start n2

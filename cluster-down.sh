#!/bin/bash

echo "[*] Stoping nginx docker container"
sudo docker stop 82b5d633f086
echo "[*] Stoping VM m1"
virsh shutdown m1
sleep 10
echo "[*] Stoping VM m2"
virsh shutdown m2
sleep 10
echo "[*] Stoping VM n1"
virsh shutdown n1
sleep 10
echo "[*] Stoping VM n2"
virsh shutdown n2


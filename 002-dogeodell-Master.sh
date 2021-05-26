#!/bin/bash
cp 14config/id_rsa* /home/node/.ssh/
chmod 600 /home/node/.ssh/id_rsa
./dogeodell-init.sh
echo Welecome Master
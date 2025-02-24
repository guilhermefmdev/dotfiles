#!/bin/bash

echo "Installing dwm..
"
cd ~/dwm-6.5/
sudo make clean install
echo "

"

echo "Installing dmenu..
"
cd ~/dmenu/
sudo make clean install
echo "

"

echo "Installing slstatus..
"
cd ~/slstatus/
sudo make clean install
echo "

"

echo "Installing sxhkd..
"
cd ~/sxhkd/
make
echo "

"

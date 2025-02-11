#!/usr/bin/bash

echo "Installing rmate for remote file editing with sublime or textmate."
echo "Remember to open a remote tunnel with ssh: -R 52698:localhost:52698"
echo "..."
sudo wget -O /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
sudo chmod a+x /usr/local/bin/rmate


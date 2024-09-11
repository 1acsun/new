#!/bin/bash
apt update && apt upgrade -y
apt install sudo nano
sudo apt install i3 firefox tigervnc-standalone-server qterminal
wget https://github.com/openziti/zrok/releases/download/v0.4.39/zrok_0.4.39_linux_amd64.tar.gz
tar -xvzf zrok_0.4.39_linux_amd64.tar.gz
sudo mv zrok /usr/local/bin
cd ~
zrok enable w2X5PI023UDi
echo "vncserver :1; zrok share private --backend-mode tcpTunnel localhost:5901" | sudo tee -a /usr/local/bin/vnc > /dev/null
echo "vncserver -kill :*" | sudo tee -a /usr/local/bin/vs > /dev/null
sudo chmod +x /usr/local/bin/*




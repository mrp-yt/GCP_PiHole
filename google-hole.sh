#! /usr/bin/bash
sudo apt-get update && 
echo "-----------------"
echo "Installing Docker"
sleep 5 &&
sudo curl -sSL https://get.docker.com | sh && 
sudo curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add - && 
sudo curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list && 
sudo apt-get update && 
echo "-----------------"
echo "Installing Tail Scale"
sleep 5 &&
sudo apt-get install tailscale && 
echo "------------------"
echo "Be ready to approve Tail Scale Connection"
sleep 5 &&
sudo tailscale up &&
echo "-----------------
echo "Installing PiHole" &&
sleep 
sudo docker run -dit --name pihole -p 80:80 -p 53:53 -p 53:53/udp -p 67:67 -p 67:67/udp pihole/pihole &&
echo 'PiHole Has been installed' &&
echo "Pihole Installed " &&
echo "Access Pihole dashboard: http://<tailscale_ip:88/admin "

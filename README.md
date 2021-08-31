# Google Cloud hosted PiHole with TailScale connectivity

* Create [Google Cloud](https://cloud.google.com/) Account
* Setup Virtual Machine:
  - Machine configuration
    - Series: `N1`
    - Machine type: `f1-micro`
    - Inside boot disk change it to `Standard persistent disk`
    - Firewall: allow `HTTP` and `HTTPS` traffic
  - If al lsellected correctly, on the right side you should see something like this:
  `Your first 744 hours of f1-micro instance usage are free this month`
* While VM getting craeted, register for [TailScale](https://tailscale.com/) service (it's free)
* Start SSH Connection to VM
* Run this command
  ```
  sudo apt install wget -y &&
  sudo wget https://raw.githubusercontent.com/mrp-yt/GCP_PiHole/main/google-hole.sh &&
  sudo bash google-hole.sh
  ```
  This will install wget, pull google-hole.sh script and run it. Script will install docker and setup pihole container with port `80` opened. Will install TailScale and run it.\
  TailScale will give you url to activate connection with your TailScale account
* After connection to TailScale has been acitivated you can conenct to PiHole dashboard using `http://Tailscale_assigned_ip:80`
* To connect any device to use PiHole as DNS ad blocker you need to install TailScale on each device and activate connection.\
  Supported [TailScale device](https://tailscale.com/download)

#! /bin/bash
printf "Check Out My Channel While Waiting- https://youtu.be/VeO22kIvZOQ" >&2
{
sudo useradd -m ALOK
sudo adduser ALOK sudo
echo 'ALOK:8426' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_20.0.2-1.deb
sudo dpkg -i crossover_20.0.2-1.deb
wget http://ftp.br.debian.org/debian/pool/main/x/xfce4-terminal/xfce4-terminal_0.8.3-1_amd64.deb
sudo dpkg -i xfce4-terminal_0.8.3-1_amd64.deb
wget https://dl.winehq.org/wine-builds/debian/dists/bullseye/main/binary-amd64/winehq-devel_6.2~bullseye-1_amd64.deb
sudo dpkg -i winehq-devel_6.2~bullseye-1_amd64.deb
sudo add-apt-repository ppa:ubuntuhandbook1/avidemux -y
sudo apt install libavidemux2.7-6 libavidemux2.7-qt5-6 avidemux2.7-qt5 avidemux2.7-plugins-qt5 avidemux2.7-jobs-qt5 -y
sudo add-apt-repository ppa:alex-p/aegisub -y
sudo apt-get install aegisub -y
sudo add-apt-repository ppa:font-manager/staging -y
sudo apt-get install font-manager -y
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo apt -y install obs-studio
sudo apt -y install firefox
sudo adduser ALOK chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - ALOK -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n'
printf 'Your SUDO Pasword Is 8426 \n'

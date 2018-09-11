#!/bin/bash

echo -e "\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m Welcome to Desktop environment and Remote connection tool ! V2.0.2 \033[0m"
echo "System requirements: CentOS 7+ / Debian 9+ / Ubuntu 18.04+ New installation"
echo -e "\033[33m This shell is for the system: CentOS 7+, if you need to run on other systems, please refer to the following tutorial. \033[0m"
echo "[Original] One-click installation of Desktop environment, RDP, Windows support for Linux"
echo "URL：https://tech.cxthhhhh.com/linux/2018/08/07/original-one-click-installation-of-desktop-environment-rdp-windows-support-for-linux-en.html"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m It is recommended to use CentOS 7 installation, the following pure system is recommended. \033[0m"
echo "Recommended system : [Original] Network one-click Reinstall CentOS 7 (Official, Pure, Safe, Efficient)"
echo "URL : https://tech.cxthhhhh.com/linux/2018/07/30/original-network-one-click-reinstall-centos-7-official-pure-safe-efficient-en.html"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from https://tech.cxthhhhh.com - 2018/09/10 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
echo Press any key to continue! Exit with 'Ctrl'+'C' !

echo -e "\n"
sudo cd /root
yum install epel-release -y
echo "Start creating Swaps Memory, please wait..."
dd if=/dev/zero of=/var/swapd bs=1024 count=3145728
mkswap /var/swapd
chmod 0644 /var/swapd
swapon /var/swapd
echo '/var/swapd   swap   swap   default 0 0' >> /etc/fstab
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Swaps Memory is Created And Mirror Updated  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
yum groupinstall "X Window System" -y
yum groupinstall "MATE Desktop" -y
yum groupinstall "Chinese support" -y
yum groups mark install "Chinese support" -y
yum install cjkuni-ukai-fonts cjkuni-uming-fonts -y
yum install fontforge -y
yum install ibus-libpinyin im-chooser -y
localectl set-locale LANG=zh_CN.UTF8
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Desktop environment is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
touch /etc/yum.repos.d/google-chrome.repo
echo '[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl.google.com/linux/linux_signing_key.pub'>/etc/yum.repos.d/google-chrome.repo
echo -e "\n"
cat /etc/yum.repos.d/google-chrome.repo
yum install google-chrome-stable -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Chrome Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/CentOS/Nux-Dextop/nux-dextop-release-0-5.el7.nux.noarch.rpm --quiet
yum install remmina remmina-plugins-* -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remmina FileZilla Firefox Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
yum groupinstall "Development Tools" -y
yum install libX11-devel freetype-devel zlib-devel libxcb-devel libxslt-devel libgcrypt-devel libxml2-devel gnutls-devel libpng-devel libjpeg-turbo-devel libtiff-devel gstreamer-devel dbus-devel fontconfig-devel -y
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/CentOS/Wine/wine32-release.rpm --quiet
yum install wine.i686 -y
yum install wine -y
sudo wget -O /usr/share/wine/fonts/msyh.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/msyh.ttc
sudo wget -O /usr/share/wine/fonts/msyhbd.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/msyhbd.ttc
sudo wget -O /usr/share/wine/fonts/msyhl.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/msyhl.ttc
sudo wget -O /usr/share/wine/fonts/simfang.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simfang.ttf
sudo wget -O /usr/share/wine/fonts/simhei.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simhei.ttf
sudo wget -O /usr/share/wine/fonts/simkai.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simkai.ttf
sudo wget -O /usr/share/wine/fonts/SIMLI.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/SIMLI.ttf
sudo wget -O /usr/share/wine/fonts/simsun.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simsun.ttc
sudo wget -O /usr/share/wine/fonts/SIMYOU.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/SIMYOU.ttf
sudo wget -O /usr/share/wine/fonts/仿宋_GB2312.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/仿宋_GB2312.ttf
sudo wget -O /usr/share/wine/fonts/楷体_GB2312.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/楷体_GB2312.ttf
useradd -m RdpUser
echo "cxthhhhh.com
cxthhhhh.com
" | passwd RdpUser
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Wine Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/CentOS/libpng12-1.2.50-10.el7.x86_64.rpm --quiet
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/CentOS/mesa-libGLU-9.0.0-4.el7.x86_64.rpm --quiet
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/wps-office-10.1.0.5707-1.a21.x86_64.rpm --quiet
rpm -Uvh --force https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/wps-office-fonts-1.0-1.noarch.rpm --quiet
sudo wget -O /usr/share/fonts/mtextra.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/mtextra.ttf
sudo wget -O /usr/share/fonts/symbol.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/symbol.ttf
sudo wget -O /usr/share/fonts/WEBDINGS.TTF https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/WEBDINGS.TTF
sudo wget -O /usr/share/fonts/wingding.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/wingding.ttf
sudo wget -O /usr/share/fonts/WINGDNG2.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/WINGDNG2.ttf
sudo wget -O /usr/share/fonts/WINGDNG3.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/WINGDNG3.ttf
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
sudo yum install bzip2-devel -y
sudo ln -s `find /usr/lib64/ -type f -name "libbz2.so.1*"` /usr/lib64/libbz2.so.1.0
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m WPS Office Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
sudo cd /root
yum install tigervnc-server tigervnc -y
yum install xrdp -y
touch ~/.Xclients
echo "mate-session" > ~/.Xclients
chmod a+x ~/.Xclients
touch /home/RdpUser/.Xclients
echo "mate-session" > /home/RdpUser/.Xclients
chmod a+x /home/RdpUser/.Xclients
systemctl enable xrdp
systemctl start xrdp
firewall-cmd --add-port=3389/tcp --permanent
firewall-cmd --reload
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remote connection RDP is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n\n\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "The current default system language is Chinese."
echo "If you are an English user, please execute ' sudo localectl set-locale LANG=en_US.UTF-8 '"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m Warning: Now, you need to pay attention to the following, please visit this page. \033[0m"
echo "[Original] One-click installation of Desktop environment, RDP, Windows support for Linux"
echo "https://tech.cxthhhhh.com/linux/2018/08/07/original-one-click-installation-of-desktop-environment-rdp-windows-support-for-linux-en.html"
echo "---------------------------------------------------------------------------------------------------------------------"
echo "End to Desktop environment and Remote connection tool ! V2.0.2"
echo -e "\033[33m Everything is ready and the system is restarting. Then you can connect via (RDP)IP:3389. \033[0m"
echo "Normally, the [root] user is not recommended. The new user [RdpUser] has been created with the password [cxthhhhh.com]. Please change the default password as soon as possible after login."
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from https://tech.cxthhhhh.com - 2018/09/11 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
sleep 5s
reboot
echo -e "\n"
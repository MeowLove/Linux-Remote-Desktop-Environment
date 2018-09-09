# Linux-Remote-Desktop-Environment
One-click installation of Desktop environment, RDP, Windows support, Office Tools for Linux.

My website: https://tech.cxthhhhh.com

![image](https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Image/Demo_Picture.jpg)

Features:
1. Install the desktop environment and RDP remote desktop connection for your Linux (CentOS/Debian/Ubuntu ) with one click.

    (You need a newly installed Linux System, the Recommended Hardware requirements are: CPU core ≥ 1, Memory ≥ 1GB, Disk space ≥ 15GB. The higher the hardware configuration, the better. You can also try running Debian with a low hardware configuration, but it may run slowly.)

    Recommended system : [Original] Network one-click Reinstall CentOS 7 (Official, Pure, Safe, Efficient) 
    URL : https://tech.cxthhhhh.com/linux/2018/07/30/original-network-one-click-reinstall-centos-7-official-pure-safe-efficient-en.html

2. Windows application support. (via Wine)

    (Install Wine X64 and X86, now you can Run Windows applications On Linux.)

3. Create a 3GB Swap Memory. Avoid errors caused by insufficient memory.

    (Swap Location: /var/swapd)

4. Install Chinese input environment, Chinese support.

    (Without a Chinese environment, you will not be able to view Chinese fonts. Will lead to coding confusion.)

5. Install software that people recommend, such as Browsers, Office tools and Input methods.

    (I posted a survey here https://www.hostloc.com/thread-466449-1-1.html and https://www.hostloc.com/thread-473982-1-1.html. Respect the results of the survey,  Chrome、Firefox、WPS International、FileZilla are installed.)

6. Install the Remote Desktop client. (Remmina allows you to connect and manage other computers or Server.)
    (Support RDP/SSH/NX/SFTP/VNC/XDMCP protocol)

Let's get started (via root user)

    wget --no-check-certificate -qO ~/Linux-Remote-Desktop-Environment.sh 'https://tech.cxthhhhh.com/tech-tools/Linux-Remote-Desktop-Environment/Linux-Remote-Desktop-Environment.sh' && chmod a+x ~/Linux-Remote-Desktop-Environment.sh
    (CentOS 7+)			bash ~/Linux-Remote-Desktop-Environment.sh -CentOS
    (Debian 9+)			bash ~/Linux-Remote-Desktop-Environment.sh -Debian
    (Ubuntu 18.04+)			bash ~/Linux-Remote-Desktop-Environment.sh -Ubuntu

Now that you have done it, you can connect via RDP (IP: 3389)

    (Please note that it is generally not recommended to use the root user, so the user [RdpUser] is automatically created with the password [cxthhhhh.com] and you should change the default password as soon as possible.)

You should check out my tutorial to find out what you need to pay attention to.

    Tutorial name : [Original] One-click installation of Desktop environment, RDP, Windows support for Linux
    URL : https://tech.cxthhhhh.com/linux/2018/08/07/original-one-click-installation-of-desktop-environment-rdp-windows-support-for-linux-en.html

Version 2.0.1 (stable version)
Updated on Sep 10, 2018
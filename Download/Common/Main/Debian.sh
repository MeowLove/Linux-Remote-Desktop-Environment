#!/bin/bash

echo -e "\n"
clear
echo -e "\n"
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[33m Welcome to Desktop environment and Remote connection tool ! V2.0.0 \033[0m"
echo "System requirements: CentOS 7+ / Debian 9+ / Ubuntu 18.04+ New installation"
echo -e "\033[33m This shell is for the system: Debian 9+, if you need to run on other systems, please refer to the following tutorial. \033[0m"
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
cd /root
echo "Start creating Swaps Memory, please wait..."
dd if=/dev/zero of=/var/swapd bs=1024 count=3145728
mkswap /var/swapd
chmod 0644 /var/swapd
swapon /var/swapd
echo '/var/swapd   swap   swap   default 0 0' >> /etc/fstab
apt-get update -y
apt-get dist-upgrade -y
apt-get install sudo curl wget patch -y
apt --fix-broken install -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Swaps Memory is Created And Mirror Updated  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
apt-get install apt-transport-https -y
apt-get install x-window-system-core -y
apt-get install mate-desktop-environment-extras locales vim -y
echo '# This file lists locales that you wish to have built. You can find a list
# of valid supported locales at /usr/share/i18n/SUPPORTED, and you can add
# user defined locales to /usr/local/share/i18n/SUPPORTED. If you change
# this file, you need to rerun locale-gen.


# aa_DJ ISO-8859-1
# aa_DJ.UTF-8 UTF-8
# aa_ER UTF-8
# aa_ER@saaho UTF-8
# aa_ET UTF-8
# af_ZA ISO-8859-1
# af_ZA.UTF-8 UTF-8
# ak_GH UTF-8
# am_ET UTF-8
# an_ES ISO-8859-15
# an_ES.UTF-8 UTF-8
# anp_IN UTF-8
# ar_AE ISO-8859-6
# ar_AE.UTF-8 UTF-8
# ar_BH ISO-8859-6
# ar_BH.UTF-8 UTF-8
# ar_DZ ISO-8859-6
# ar_DZ.UTF-8 UTF-8
# ar_EG ISO-8859-6
# ar_EG.UTF-8 UTF-8
# ar_IN UTF-8
# ar_IQ ISO-8859-6
# ar_IQ.UTF-8 UTF-8
# ar_JO ISO-8859-6
# ar_JO.UTF-8 UTF-8
# ar_KW ISO-8859-6
# ar_KW.UTF-8 UTF-8
# ar_LB ISO-8859-6
# ar_LB.UTF-8 UTF-8
# ar_LY ISO-8859-6
# ar_LY.UTF-8 UTF-8
# ar_MA ISO-8859-6
# ar_MA.UTF-8 UTF-8
# ar_OM ISO-8859-6
# ar_OM.UTF-8 UTF-8
# ar_QA ISO-8859-6
# ar_QA.UTF-8 UTF-8
# ar_SA ISO-8859-6
# ar_SA.UTF-8 UTF-8
# ar_SD ISO-8859-6
# ar_SD.UTF-8 UTF-8
# ar_SS UTF-8
# ar_SY ISO-8859-6
# ar_SY.UTF-8 UTF-8
# ar_TN ISO-8859-6
# ar_TN.UTF-8 UTF-8
# ar_YE ISO-8859-6
# ar_YE.UTF-8 UTF-8
# as_IN UTF-8
# ast_ES ISO-8859-15
# ast_ES.UTF-8 UTF-8
# ayc_PE UTF-8
# az_AZ UTF-8
# be_BY CP1251
# be_BY.UTF-8 UTF-8
# be_BY@latin UTF-8
# bem_ZM UTF-8
# ber_DZ UTF-8
# ber_MA UTF-8
# bg_BG CP1251
# bg_BG.UTF-8 UTF-8
# bhb_IN.UTF-8 UTF-8
# bho_IN UTF-8
# bn_BD UTF-8
# bn_IN UTF-8
# bo_CN UTF-8
# bo_IN UTF-8
# br_FR ISO-8859-1
# br_FR.UTF-8 UTF-8
# br_FR@euro ISO-8859-15
# brx_IN UTF-8
# bs_BA ISO-8859-2
# bs_BA.UTF-8 UTF-8
# byn_ER UTF-8
# ca_AD ISO-8859-15
# ca_AD.UTF-8 UTF-8
# ca_ES ISO-8859-1
# ca_ES.UTF-8 UTF-8
# ca_ES.UTF-8@valencia UTF-8
# ca_ES@euro ISO-8859-15
# ca_ES@valencia ISO-8859-15
# ca_FR ISO-8859-15
# ca_FR.UTF-8 UTF-8
# ca_IT ISO-8859-15
# ca_IT.UTF-8 UTF-8
# ce_RU UTF-8
# chr_US UTF-8
# cmn_TW UTF-8
# crh_UA UTF-8
# cs_CZ ISO-8859-2
# cs_CZ.UTF-8 UTF-8
# csb_PL UTF-8
# cv_RU UTF-8
# cy_GB ISO-8859-14
# cy_GB.UTF-8 UTF-8
# da_DK ISO-8859-1
# da_DK.UTF-8 UTF-8
# de_AT ISO-8859-1
# de_AT.UTF-8 UTF-8
# de_AT@euro ISO-8859-15
# de_BE ISO-8859-1
# de_BE.UTF-8 UTF-8
# de_BE@euro ISO-8859-15
# de_CH ISO-8859-1
# de_CH.UTF-8 UTF-8
# de_DE ISO-8859-1
# de_DE.UTF-8 UTF-8
# de_DE@euro ISO-8859-15
# de_IT ISO-8859-1
# de_IT.UTF-8 UTF-8
# de_LI.UTF-8 UTF-8
# de_LU ISO-8859-1
# de_LU.UTF-8 UTF-8
# de_LU@euro ISO-8859-15
# doi_IN UTF-8
# dv_MV UTF-8
# dz_BT UTF-8
# el_CY ISO-8859-7
# el_CY.UTF-8 UTF-8
# el_GR ISO-8859-7
# el_GR.UTF-8 UTF-8
# en_AG UTF-8
# en_AU ISO-8859-1
# en_AU.UTF-8 UTF-8
# en_BW ISO-8859-1
# en_BW.UTF-8 UTF-8
# en_CA ISO-8859-1
# en_CA.UTF-8 UTF-8
# en_DK ISO-8859-1
# en_DK.ISO-8859-15 ISO-8859-15
# en_DK.UTF-8 UTF-8
# en_GB ISO-8859-1
# en_GB.ISO-8859-15 ISO-8859-15
# en_GB.UTF-8 UTF-8
# en_HK ISO-8859-1
# en_HK.UTF-8 UTF-8
# en_IE ISO-8859-1
# en_IE.UTF-8 UTF-8
# en_IE@euro ISO-8859-15
# en_IL UTF-8
# en_IN UTF-8
# en_NG UTF-8
# en_NZ ISO-8859-1
# en_NZ.UTF-8 UTF-8
# en_PH ISO-8859-1
# en_PH.UTF-8 UTF-8
# en_SG ISO-8859-1
# en_SG.UTF-8 UTF-8
# en_US ISO-8859-1
# en_US.ISO-8859-15 ISO-8859-15
en_US.UTF-8 UTF-8
# en_ZA ISO-8859-1
# en_ZA.UTF-8 UTF-8
# en_ZM UTF-8
# en_ZW ISO-8859-1
# en_ZW.UTF-8 UTF-8
# eo UTF-8
# es_AR ISO-8859-1
# es_AR.UTF-8 UTF-8
# es_BO ISO-8859-1
# es_BO.UTF-8 UTF-8
# es_CL ISO-8859-1
# es_CL.UTF-8 UTF-8
# es_CO ISO-8859-1
# es_CO.UTF-8 UTF-8
# es_CR ISO-8859-1
# es_CR.UTF-8 UTF-8
# es_CU UTF-8
# es_DO ISO-8859-1
# es_DO.UTF-8 UTF-8
# es_EC ISO-8859-1
# es_EC.UTF-8 UTF-8
# es_ES ISO-8859-1
# es_ES.UTF-8 UTF-8
# es_ES@euro ISO-8859-15
# es_GT ISO-8859-1
# es_GT.UTF-8 UTF-8
# es_HN ISO-8859-1
# es_HN.UTF-8 UTF-8
# es_MX ISO-8859-1
# es_MX.UTF-8 UTF-8
# es_NI ISO-8859-1
# es_NI.UTF-8 UTF-8
# es_PA ISO-8859-1
# es_PA.UTF-8 UTF-8
# es_PE ISO-8859-1
# es_PE.UTF-8 UTF-8
# es_PR ISO-8859-1
# es_PR.UTF-8 UTF-8
# es_PY ISO-8859-1
# es_PY.UTF-8 UTF-8
# es_SV ISO-8859-1
# es_SV.UTF-8 UTF-8
# es_US ISO-8859-1
# es_US.UTF-8 UTF-8
# es_UY ISO-8859-1
# es_UY.UTF-8 UTF-8
# es_VE ISO-8859-1
# es_VE.UTF-8 UTF-8
# et_EE ISO-8859-1
# et_EE.ISO-8859-15 ISO-8859-15
# et_EE.UTF-8 UTF-8
# eu_ES ISO-8859-1
# eu_ES.UTF-8 UTF-8
# eu_ES@euro ISO-8859-15
# eu_FR ISO-8859-1
# eu_FR.UTF-8 UTF-8
# eu_FR@euro ISO-8859-15
# fa_IR UTF-8
# ff_SN UTF-8
# fi_FI ISO-8859-1
# fi_FI.UTF-8 UTF-8
# fi_FI@euro ISO-8859-15
# fil_PH UTF-8
# fo_FO ISO-8859-1
# fo_FO.UTF-8 UTF-8
# fr_BE ISO-8859-1
# fr_BE.UTF-8 UTF-8
# fr_BE@euro ISO-8859-15
# fr_CA ISO-8859-1
# fr_CA.UTF-8 UTF-8
# fr_CH ISO-8859-1
# fr_CH.UTF-8 UTF-8
# fr_FR ISO-8859-1
# fr_FR.UTF-8 UTF-8
# fr_FR@euro ISO-8859-15
# fr_LU ISO-8859-1
# fr_LU.UTF-8 UTF-8
# fr_LU@euro ISO-8859-15
# fur_IT UTF-8
# fy_DE UTF-8
# fy_NL UTF-8
# ga_IE ISO-8859-1
# ga_IE.UTF-8 UTF-8
# ga_IE@euro ISO-8859-15
# gd_GB ISO-8859-15
# gd_GB.UTF-8 UTF-8
# gez_ER UTF-8
# gez_ER@abegede UTF-8
# gez_ET UTF-8
# gez_ET@abegede UTF-8
# gl_ES ISO-8859-1
# gl_ES.UTF-8 UTF-8
# gl_ES@euro ISO-8859-15
# gu_IN UTF-8
# gv_GB ISO-8859-1
# gv_GB.UTF-8 UTF-8
# ha_NG UTF-8
# hak_TW UTF-8
# he_IL ISO-8859-8
# he_IL.UTF-8 UTF-8
# hi_IN UTF-8
# hne_IN UTF-8
# hr_HR ISO-8859-2
# hr_HR.UTF-8 UTF-8
# hsb_DE ISO-8859-2
# hsb_DE.UTF-8 UTF-8
# ht_HT UTF-8
# hu_HU ISO-8859-2
# hu_HU.UTF-8 UTF-8
# hy_AM UTF-8
# hy_AM.ARMSCII-8 ARMSCII-8
# ia_FR UTF-8
# id_ID ISO-8859-1
# id_ID.UTF-8 UTF-8
# ig_NG UTF-8
# ik_CA UTF-8
# is_IS ISO-8859-1
# is_IS.UTF-8 UTF-8
# it_CH ISO-8859-1
# it_CH.UTF-8 UTF-8
# it_IT ISO-8859-1
# it_IT.UTF-8 UTF-8
# it_IT@euro ISO-8859-15
# iu_CA UTF-8
# ja_JP.EUC-JP EUC-JP
# ja_JP.UTF-8 UTF-8
# ka_GE GEORGIAN-PS
# ka_GE.UTF-8 UTF-8
# kk_KZ PT154
# kk_KZ.RK1048 RK1048
# kk_KZ.UTF-8 UTF-8
# kl_GL ISO-8859-1
# kl_GL.UTF-8 UTF-8
# km_KH UTF-8
# kn_IN UTF-8
# ko_KR.EUC-KR EUC-KR
# ko_KR.UTF-8 UTF-8
# kok_IN UTF-8
# ks_IN UTF-8
# ks_IN@devanagari UTF-8
# ku_TR ISO-8859-9
# ku_TR.UTF-8 UTF-8
# kw_GB ISO-8859-1
# kw_GB.UTF-8 UTF-8
# ky_KG UTF-8
# lb_LU UTF-8
# lg_UG ISO-8859-10
# lg_UG.UTF-8 UTF-8
# li_BE UTF-8
# li_NL UTF-8
# lij_IT UTF-8
# ln_CD UTF-8
# lo_LA UTF-8
# lt_LT ISO-8859-13
# lt_LT.UTF-8 UTF-8
# lv_LV ISO-8859-13
# lv_LV.UTF-8 UTF-8
# lzh_TW UTF-8
# mag_IN UTF-8
# mai_IN UTF-8
# mg_MG ISO-8859-15
# mg_MG.UTF-8 UTF-8
# mhr_RU UTF-8
# mi_NZ ISO-8859-13
# mi_NZ.UTF-8 UTF-8
# mk_MK ISO-8859-5
# mk_MK.UTF-8 UTF-8
# ml_IN UTF-8
# mn_MN UTF-8
# mni_IN UTF-8
# mr_IN UTF-8
# ms_MY ISO-8859-1
# ms_MY.UTF-8 UTF-8
# mt_MT ISO-8859-3
# mt_MT.UTF-8 UTF-8
# my_MM UTF-8
# nan_TW UTF-8
# nan_TW@latin UTF-8
# nb_NO ISO-8859-1
# nb_NO.UTF-8 UTF-8
# nds_DE UTF-8
# nds_NL UTF-8
# ne_NP UTF-8
# nhn_MX UTF-8
# niu_NU UTF-8
# niu_NZ UTF-8
# nl_AW UTF-8
# nl_BE ISO-8859-1
# nl_BE.UTF-8 UTF-8
# nl_BE@euro ISO-8859-15
# nl_NL ISO-8859-1
# nl_NL.UTF-8 UTF-8
# nl_NL@euro ISO-8859-15
# nn_NO ISO-8859-1
# nn_NO.UTF-8 UTF-8
# nr_ZA UTF-8
# nso_ZA UTF-8
# oc_FR ISO-8859-1
# oc_FR.UTF-8 UTF-8
# om_ET UTF-8
# om_KE ISO-8859-1
# om_KE.UTF-8 UTF-8
# or_IN UTF-8
# os_RU UTF-8
# pa_IN UTF-8
# pa_PK UTF-8
# pap_AW UTF-8
# pap_CW UTF-8
# pl_PL ISO-8859-2
# pl_PL.UTF-8 UTF-8
# ps_AF UTF-8
# pt_BR ISO-8859-1
# pt_BR.UTF-8 UTF-8
# pt_PT ISO-8859-1
# pt_PT.UTF-8 UTF-8
# pt_PT@euro ISO-8859-15
# quz_PE UTF-8
# raj_IN UTF-8
# ro_RO ISO-8859-2
# ro_RO.UTF-8 UTF-8
# ru_RU ISO-8859-5
# ru_RU.CP1251 CP1251
# ru_RU.KOI8-R KOI8-R
# ru_RU.UTF-8 UTF-8
# ru_UA KOI8-U
# ru_UA.UTF-8 UTF-8
# rw_RW UTF-8
# sa_IN UTF-8
# sat_IN UTF-8
# sc_IT UTF-8
# sd_IN UTF-8
# sd_IN@devanagari UTF-8
# se_NO UTF-8
# sgs_LT UTF-8
# shs_CA UTF-8
# si_LK UTF-8
# sid_ET UTF-8
# sk_SK ISO-8859-2
# sk_SK.UTF-8 UTF-8
# sl_SI ISO-8859-2
# sl_SI.UTF-8 UTF-8
# so_DJ ISO-8859-1
# so_DJ.UTF-8 UTF-8
# so_ET UTF-8
# so_KE ISO-8859-1
# so_KE.UTF-8 UTF-8
# so_SO ISO-8859-1
# so_SO.UTF-8 UTF-8
# sq_AL ISO-8859-1
# sq_AL.UTF-8 UTF-8
# sq_MK UTF-8
# sr_ME UTF-8
# sr_RS UTF-8
# sr_RS@latin UTF-8
# ss_ZA UTF-8
# st_ZA ISO-8859-1
# st_ZA.UTF-8 UTF-8
# sv_FI ISO-8859-1
# sv_FI.UTF-8 UTF-8
# sv_FI@euro ISO-8859-15
# sv_SE ISO-8859-1
# sv_SE.ISO-8859-15 ISO-8859-15
# sv_SE.UTF-8 UTF-8
# sw_KE UTF-8
# sw_TZ UTF-8
# szl_PL UTF-8
# ta_IN UTF-8
# ta_LK UTF-8
# tcy_IN.UTF-8 UTF-8
# te_IN UTF-8
# tg_TJ KOI8-T
# tg_TJ.UTF-8 UTF-8
# th_TH TIS-620
# th_TH.UTF-8 UTF-8
# the_NP UTF-8
# ti_ER UTF-8
# ti_ET UTF-8
# tig_ER UTF-8
# tk_TM UTF-8
# tl_PH ISO-8859-1
# tl_PH.UTF-8 UTF-8
# tn_ZA UTF-8
# tr_CY ISO-8859-9
# tr_CY.UTF-8 UTF-8
# tr_TR ISO-8859-9
# tr_TR.UTF-8 UTF-8
# ts_ZA UTF-8
# tt_RU UTF-8
# tt_RU@iqtelif UTF-8
# ug_CN UTF-8
# uk_UA KOI8-U
# uk_UA.UTF-8 UTF-8
# unm_US UTF-8
# ur_IN UTF-8
# ur_PK UTF-8
# uz_UZ ISO-8859-1
# uz_UZ.UTF-8 UTF-8
# uz_UZ@cyrillic UTF-8
# ve_ZA UTF-8
# vi_VN UTF-8
# wa_BE ISO-8859-1
# wa_BE.UTF-8 UTF-8
# wa_BE@euro ISO-8859-15
# wae_CH UTF-8
# wal_ET UTF-8
# wo_SN UTF-8
# xh_ZA ISO-8859-1
# xh_ZA.UTF-8 UTF-8
# yi_US CP1255
# yi_US.UTF-8 UTF-8
# yo_NG UTF-8
# yue_HK UTF-8
zh_CN GB2312
zh_CN.GB18030 GB18030
zh_CN.GBK GBK
zh_CN.UTF-8 UTF-8
# zh_HK BIG5-HKSCS
# zh_HK.UTF-8 UTF-8
# zh_SG GB2312
# zh_SG.GBK GBK
# zh_SG.UTF-8 UTF-8
# zh_TW BIG5
# zh_TW.EUC-TW EUC-TW
# zh_TW.UTF-8 UTF-8
# zu_ZA ISO-8859-1
# zu_ZA.UTF-8 UTF-8
# en_US.UTF-8 UTF-8'>/etc/locale.gen
locale-gen
update-locale "LANG=zh_CN.UTF-8"
locale-gen --purge "zh_CN.UTF-8"
dpkg-reconfigure --frontend noninteractive locales
localectl set-locale LANG=zh_CN.UTF-8
apt-get install xfonts-intl-chinese xfonts-wqy -y
apt-get install fontforge software-properties-common -y
apt-get install ibus-libpinyin net-tools network-manager network-manager-gnome -y
echo '[main]
plugins=ifupdown,keyfile

[ifupdown]
managed=true'>/etc/NetworkManager/NetworkManager.conf
cat /etc/NetworkManager/NetworkManager.conf
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Desktop environment is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
apt-get update -y
apt-get install google-chrome-stable -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Chrome Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
dpkg --print-architecture
sudo dpkg --add-architecture i386 && sudo apt update
wget -nc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Wine/Release.key
sudo apt-key add Release.key
rm -rf Release.key
apt-add-repository https://dl.winehq.org/wine-builds/debian/
apt-get update -y
sudo apt-get install --install-recommends winehq-stable -y
mkdir -p  ~/.wine/drive_c/windows/Fonts/
sudo wget -O ~/.wine/drive_c/windows/Fonts/msyh.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/msyh.ttc
sudo wget -O ~/.wine/drive_c/windows/Fonts/msyhbd.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/msyhbd.ttc
sudo wget -O ~/.wine/drive_c/windows/Fonts/msyhl.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/msyhl.ttc
sudo wget -O ~/.wine/drive_c/windows/Fonts/simfang.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simfang.ttf
sudo wget -O ~/.wine/drive_c/windows/Fonts/simhei.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simhei.ttf
sudo wget -O ~/.wine/drive_c/windows/Fonts/simkai.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simkai.ttf
sudo wget -O ~/.wine/drive_c/windows/Fonts/SIMLI.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/SIMLI.ttf
sudo wget -O ~/.wine/drive_c/windows/Fonts/simsun.ttc https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/simsun.ttc
sudo wget -O ~/.wine/drive_c/windows/Fonts/SIMYOU.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/SIMYOU.ttf
sudo wget -O ~/.wine/drive_c/windows/Fonts/仿宋_GB2312.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/仿宋_GB2312.ttf
sudo wget -O ~/.wine/drive_c/windows/Fonts/楷体_GB2312.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Wine/楷体_GB2312.ttf
useradd -m RdpUser
echo "cxthhhhh.com
cxthhhhh.com
" | passwd RdpUser
su - RdpUser -c 'mkdir -p  /home/RdpUser/.wine/drive_c/windows/Fonts/'
cp -rf ~/.wine/drive_c/windows/Fonts/* /home/RdpUser/.wine/drive_c/windows/Fonts/
chown -R RdpUser:RdpUser /home/RdpUser/.wine/drive_c/windows/Fonts/*
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Wine Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
apt-get install snapd filezilla -y
snap install firefox
snap install remmina
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remmina FileZilla Firefox Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
sudo wget -O ~/Libpng12-0.deb https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/Debian/libpng12-0_1.2.50-2+deb8u3_amd64.deb
sudo dpkg -i ~/Libpng12-0.deb
sudo wget -O ~/WPS-Office.deb https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/wps-office_10.1.0.5707~a21_amd64.deb
sudo dpkg -i ~/WPS-Office.deb
sudo wget -O ~/WPS-Office-Fonts.deb https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/WPS/wps-office-fonts_1.0_all.deb
sudo dpkg -i ~/WPS-Office-Fonts.deb
rm -rf ~/Libpng12-0.deb
rm -rf ~/WPS-Office.deb
rm -rf ~/WPS-Office-Fonts.deb
sudo wget -O /usr/share/fonts/mtextra.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/mtextra.ttf
sudo wget -O /usr/share/fonts/symbol.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/symbol.ttf
sudo wget -O /usr/share/fonts/WEBDINGS.TTF https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/WEBDINGS.TTF
sudo wget -O /usr/share/fonts/wingding.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/wingding.ttf
sudo wget -O /usr/share/fonts/WINGDNG2.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/WINGDNG2.ttf
sudo wget -O /usr/share/fonts/WINGDNG3.ttf https://raw.githubusercontent.com/MeowLove/Linux-Remote-Desktop-Environment/master/Download/Common/Fonts/TTF-Sys/WINGDNG3.ttf
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m WPS Office Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

echo -e "\n"
cd /root
apt-get install xrdp tigervnc-standalone-server -y
cd /etc/xrdp/
cat <<EOF | sudo patch -p1
--- a/xrdp.ini     2017-06-19 14:05:53.290490260 +0900
+++ b/xrdp.ini  2017-06-19 14:11:17.788557402 +0900
@@ -147,15 +147,6 @@ tcutils=true
 ; Session types
 ;

-[Xorg]
-name=Xorg
-lib=libxup.so
-username=ask
-password=ask
-ip=127.0.0.1
-port=-1
-code=20
-
 [Xvnc]
 name=Xvnc
 lib=libvnc.so
@@ -166,6 +157,15 @@ port=-1
 #xserverbpp=24
 #delay_ms=2000

+[Xorg]
+name=Xorg
+lib=libxup.so
+username=ask
+password=ask
+ip=127.0.0.1
+port=-1
+code=20
+
 [console]
 name=console
 lib=libvnc.so
EOF
cd /root
touch ~/.Xclients
echo "mate-session" > ~/.Xclients
chmod a+x ~/.Xclients
touch /home/RdpUser/.Xclients
echo "mate-session" > /home/RdpUser/.Xclients
chmod a+x /home/RdpUser/.Xclients
systemctl restart xrdp
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
echo "End to Desktop environment and Remote connection tool ! V2.0.0"
echo -e "\033[33m Everything is ready and the system is restarting. Then you can connect via (RDP)IP:3389. \033[0m"
echo "Normally, the [root] user is not recommended. The new user [RdpUser] has been created with the password [cxthhhhh.com]. Please change the default password as soon as possible after login."
echo "---------------------------------------------------------------------------------------------------------------------"
echo "from https://tech.cxthhhhh.com - 2018/09/10 - MeowLove"
echo "---------------------------------------------------------------------------------------------------------------------"
sleep 5s
reboot
echo -e "\n"
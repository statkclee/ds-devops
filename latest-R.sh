##======================================================================================
## 1. R 최신버젼 추가
##======================================================================================
sudo apt-get update  
sudo apt-get upgrade
sudo apt-get install -y libcurl4-openssl-dev  
sudo apt-get install -y libgstreamer-plugins-base0.10-0  
sudo apt-get install -y gdebi-core  
sudo apt-get install -y libapparmor1  
sudo apt-get install -y  libxml2-dev  
sudo apt-get install -y libcurl4-gnutls-dev  
sudo echo 'deb http://cran.cnr.Berkeley.edu/bin/linux/ubuntu trusty/' >> /etc/apt/sources.list  
apt-get update  
apt-get install -y --force-yes r-base r-base-dev  
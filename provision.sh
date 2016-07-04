##======================================================================================
## 1. R 최신버젼 추가
##======================================================================================
sudo apt-get update
sudo apt-get upgrade
echo "deb http://cran.fhcrc.org/bin/linux/ubuntu $(lsb_release -c -s)/" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo add-apt-repository ppa:marutter/rdev
sudo apt-get install -y r-base r-base-dev

##======================================================================================
## 2. RStudio 서버 설치
##======================================================================================
# RStudio 서버 설치
sudo apt-get install -y gdebi-core
export RSTUDIO_SERVER_VERSION=`curl http://download2.rstudio.org/current.ver`
wget https://download2.rstudio.org/rstudio-server-${RSTUDIO_SERVER_VERSION}-amd64.deb
sudo gdebi -n rstudio-server-${RSTUDIO_SERVER_VERSION}-amd64.deb
rm rstudio-server-${RSTUDIO_SERVER_VERSION}-amd64.rpm

# # RStudio 사용자 추가
useradd rstudio  
mkdir /home/rstudio  
chown rstudio:rstudio /home/rstudio  
passwd rstudio <<EOF  
rstudio  
rstudio  
EOF  
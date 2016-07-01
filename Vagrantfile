# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|  
  # 비밀번호 없이 로그인
  config.ssh.insert_key = true
  # 우분투 리눅스를 설치한다.
  config.vm.box = "ubuntu/trusty64"
  # RStudio 서버를 설치한 후 포트번호 8787을 설정해야 향후 localhost:8787 로 접속하여 RStudio를 사용한다.
  config.vm.network "forwarded_port", guest: 8787, host: 8787
  # 호스트 윈도우 파일시스템과 가상컴퓨터 우분트 파일시스템을 동기화시켜 scp, sftp 등을 사용할 필요를 없앤다.
  config.vm.synced_folder  "D:/webzen/ds-devops", "/home/vagrant"
  # R 팩키지 및 RStudio 서버 설정
  config.vm.provision "shell", path: "provision.sh"

  config.vm.provider "virtualbox" do |vb|
  # devtools, Rcpp등 일부 덩치가 크고 중요한 팩키지의 경우 메모리가 적어 오류를 내는 경우가 있어 최소 2GB이상 설정한다.
    vb.memory = "2048"
  end
end


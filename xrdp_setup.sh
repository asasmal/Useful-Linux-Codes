#Install EPEL
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
sudo rpm -ivh epel-release-7-8.noarch.rpm
	
#Install X Windows and KDE
sudo yum -y groupinstall "X Window System" "KDE Desktop"
	
#Install and start xrdp
sudo yum -y install xrdp 
sudo systemctl enable xrdp
sudo systemctl start xrdp

netstat -antup | grep xrdp

systemctl enable xrdp.service

firewall-cmd --permanent --zone=public --add-port=3389/tcp

firewall-cmd --reload



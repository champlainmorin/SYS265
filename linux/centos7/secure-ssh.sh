echo $1
adduser $1 
usermod -aG wheel $1
passwd $1
sed -i 's/#PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
cd /home/localadmin/.ssh/
scp localadmin@10.0.5.151:/home/localadmin/.ssh/id_rsa /home/$1/.ssh/

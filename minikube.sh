
#########Install minikube on centos####################
#Step 1: Update system

sudo yum -y update

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

sudo yum -y install epel-release-latest-7.noarch.rpm

sudo yum -y install libvirt qemu-kvm virt-install virt-top libguestfs-tools bridge-utils

sudo systemctl start libvirtd

sudo systemctl enable libvirtd

 
#Step 2: Install KVM Hypervisor

systemctl status libvirtd

sudo systemctl enable --now libvirtd

sudo usermod -a -G libvirt $(whoami)

newgrp libvirt

sudo sed '/unix_sock_group/s/^#//' -i /etc/libvirt/libvirtd.conf

sudo sed '/unix_sock_rw_perms/s/^#//' -i /etc/libvirt/libvirtd.conf


sudo systemctl restart libvirtd.service


#Step 3: Download minikube

sudo yum -y install wget

wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

chmod +x minikube-linux-amd64

sudo mv minikube-linux-amd64 /usr/local/bin/minikube

minikube version         

#Step 4: Install kubectl

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl 

chmod +x kubectl

kubectl version --client -o json

#Step 5: Starting minikube

#minikube start --help

minikube start

#minikube start --force

#force will install docker in a container, and you can access docker container inside minicube by below cmd

#eval $(minikube docker-env) 

#Step 6: Minikube Basic operations

#kubectl cluster-info

#kubectl get nodes

#To stop a running local kubernetes cluster, run:

#minikube stop

#minikube delete

#Step 7: Enable Kubernetes Dashboard

minikube dashboard

minikube dashboard --url  







#######minikube on ubuntu############

#sudo apt-get update -y

#sudo apt-get install curl -y

#sudo apt-get install apt-transport-https -y

#sudo apt -y install virtualbox virtualbox-ext-pack 

#wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

#sudo cp minikube-linux-amd64 /usr/local/bin/minikube

#sudo chmod 755 /usr/local/bin/minikube

#minikube version

#curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

#chmod +x ./kubectl

#sudo mv ./kubectl /usr/local/bin/kubectl

#kubectl version -o json

#minikube start



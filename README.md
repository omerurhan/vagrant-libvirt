# vagrant-libvirt

Prerequisite

1- Install kvm virtualization 

	sudo apt install -yqq bridge-utils libvirt-bin qemu-kvm fish netcat-openbsd
	sudo systemctl enable libvirtd ; sudo systemctl start libvirtd

2- Install Vagrant 

	wget https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
	sudo dpkg -i vagrant_2.2.14_x86_64.deb

3- Install Vagrant libvirt plugin 

	sudo apt install ruby-dev libvirt-dev
	CONFIGURE_ARGS="with-libvirt-include=/usr/include/libvirt with-libvirt-lib=/usr/lib" vagrant plugin install vagrant-libvirt

To run the lab, it is enough to run the command below.

vagrant up --provider=libvirt

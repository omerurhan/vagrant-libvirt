#! /bin/bash

export DEBIAN_FRONTEND=noninteractive

apt_install_prerequisites() {
  echo "[$(date +%H:%M:%S)]: Running apt-get update..."
  apt-get -qq update
  echo "[$(date +%H:%M:%S)]: Running apt-get upgrade..."
  apt-get -qq upgrade -y 
}
install_initial_setup() {
  echo "[$(date +%H:%M:%S)]: Setting swapoff ..."
  swapoff -a
  sed -i '/swap    sw/ s/./#&/' /etc/fstab
}
main() {
 # apt_install_prerequisites
  install_initial_setup
}

main
exit 0


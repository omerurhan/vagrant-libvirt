#KVM PROVISIONER AYARLARI

Vagrant.configure("2") do |config|

  config.vm.provider "libvirt" do |libvirt|
    libvirt.cpu_mode = "host-passthrough"
    libvirt.storage_pool_name = 'default'
  end

## MASTER NODE

  config.vm.define "master01" do |cfg|
    cfg.vm.box = "generic/ubuntu2004"
    cfg.vm.hostname = "master01"
    cfg.vm.provision :shell, path: "bootstrap.sh"
    cfg.vm.provider "libvirt" do |lv, override|
      lv.graphics_type = "vnc"
      lv.video_type = "vga"
      lv.input :type => "tablet", :bus => "usb"
      lv.video_vram = 32768
      lv.memory = 4096
      lv.cpus = 2
      override.vm.synced_folder './filetransfer', '/vagrant', type: 'rsync'
    end
  end

## WORKER NODE 01 

  config.vm.define "worker01" do |cfg|
    cfg.vm.box = "generic/ubuntu2004"
    cfg.vm.hostname = "worker01"
    cfg.vm.provision :shell, path: "bootstrap.sh"
    cfg.vm.provider "libvirt" do |lv, override|
      lv.graphics_type = "vnc"
      lv.video_type = "vga"
      lv.input :type => "tablet", :bus => "usb"
      lv.video_vram = 32768
      lv.memory = 4096
      lv.cpus = 2
      override.vm.synced_folder './filetransfer', '/vagrant', type: 'rsync'
    end
  end

## WORKER NODE 02
  config.vm.define "worker02" do |cfg|
    cfg.vm.box = "generic/ubuntu2004"
    cfg.vm.hostname = "worker02"
    cfg.vm.provision :shell, path: "bootstrap.sh"
    cfg.vm.provider "libvirt" do |lv, override|
      lv.graphics_type = "vnc"
      lv.video_type = "vga"
      lv.input :type => "tablet", :bus => "usb"
      lv.video_vram = 32768
      lv.memory = 4096
      lv.cpus = 2
      override.vm.synced_folder './filetransfer', '/vagrant', type: 'rsync'
    end
  end
end

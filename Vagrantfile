VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
# vagrant up ubuntu
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/trusty64"
    ubuntu.vm.provider "virtualbox" do |vb|
        vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
        vb.customize ["modifyvm", :id, "--ioapic", "on"]
        vb.cpus = 1
        vb.memory = 1024
        vb.linked_clone = true
    end
    ubuntu.vm.hostname = "goubuntu"
    ubuntu.vm.network "private_network", ip: "172.20.20.10"
    ubuntu.vm.provision "shell", path: "install_go.sh"
    ubuntu.vm.synced_folder ".", "/opt/go/src/conditionalcompile", create: true    
  end
 
# vagrant up windows
  config.vm.define "windows" do |win|
    win.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
    win.vm.provider "virtualbox" do |vb|
        vb.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
        vb.customize ["modifyvm", :id, "--ioapic", "on"]
        vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
        vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
        vb.customize ["modifyvm", :id, "--vram", "32"]
        vb.cpus = 2
        vb.memory = 2048
        vb.linked_clone = true
    end
    win.vm.hostname = "gowin"
    win.vm.network "private_network", ip: "172.20.20.10"
    win.vm.provision "shell", path: "install_go.ps1"
    win.vm.provision "shell", path: "install_editor.ps1"
    # Copy files to VM
    # win.vm.provision :file, source: '.', destination: "C:/scratchpad/go/src/"
    win.vm.synced_folder ".", "C:/Scratchpad/go/src/", create: true
  end
end

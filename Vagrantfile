Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.hostname = "nothing"
  
  config.vm.provision "shell", path: "vagrant_scripts/install_terraform.sh",
    env: { "VERSION" => "0.12.31" }
  
  config.vm.provision "shell", path: "vagrant_scripts/install_bundle.sh"
  config.vm.provision "shell", path: "vagrant_scripts/git_clone_repo.sh", privileged: false
  config.vm.provision "shell", path: "vagrant_scripts/config_kitchen.sh"
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024*2
    v.cpus = 2
  end

end

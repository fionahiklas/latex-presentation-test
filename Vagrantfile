
# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/focal64"

  
  config.vm.network "forwarded_port", guest: 8080, host: 9001
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "4096"
  end

  config.vm.provision "shell", inline: <<-SHELL
    echo "Starting install"
    apt update
    apt upgrade -y
    apt install -y wget perl perl-doc libxaw7 ghostscript ghostscript-x
    cd /home/vagrant
    cp /vagrant/texlive.profile .
    wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz 
  SHELL
end

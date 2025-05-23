Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.box_version = "202502.21.0"

  config.vm.synced_folder "src/vagrant_shared", "/home/vagrant/sync"

  config.vm.define "manager" do |manager|
    manager.vm.hostname = "manager"
    manager.vm.network "private_network", ip: "192.168.11.21"

    manager.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end

    manager.vm.provision "shell", inline: <<-SHELL
    SHELL
  end

  config.vm.define "api" do |api|
    api.vm.hostname = "api"
    api.vm.network "private_network", ip: "192.168.11.22"

    api.vm.network "forwarded_port", guest: 8082, host: 8082

    api.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end

    api.vm.provision "shell", inline: <<-SHELL
    SHELL
  end

  config.vm.define "consul-server" do |server|
    server.vm.hostname = "consul-server"
    server.vm.network "private_network", ip: "192.168.11.23"

    server.vm.network "forwarded_port", guest: 8500, host: 8500

    server.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end

    server.vm.provision "shell", inline: <<-SHELL
    SHELL
  end

  config.vm.define "db" do |db|
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.11.24"

    db.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end

    db.vm.provision "shell", inline: <<-SHELL
    SHELL
  end
end
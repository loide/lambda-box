# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "lambda-box" do |lambdabox|
        lambdabox.vm.box = "ubuntu/bionic64"
        lambdabox.vm.provision "shell", path: "scripts/install.sh"
        lambdabox.vm.provider "virtualbox" do |v|
            v.memory = 4096
            v.cpus = 2
        end
    end
    config.vm.post_up_message = "Your lambda-box is ready for use."
end

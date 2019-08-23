# -*- mode: ruby -*-
# vi: set ft=ruby :

PYTHON_LAMBDA_DIR = File.expand_path("../python-lambda")

Vagrant.configure("2") do |config|
    config.vm.define "lambda-box" do |lambdabox|
        lambdabox.vm.box = "ubuntu/bionic64"
        lambdabox.vm.provision "shell", path: "scripts/instal.sh"

        if File.directory?(PYTHON_LAMBDA_DIR)
            lambdabox.vm.provision "shell", inline: "mkdir -p /home/vagrant/python-lambda"
            lambdabox.vm.synced_folder "#{PYTHON_LAMBDA_DIR}", "/home/vagrant/python-lambda"
        end
        lambdabox.vm.provider "virtualbox" do |v|
            v.memory = 4096
            v.cpus = 2
        end
    end
end

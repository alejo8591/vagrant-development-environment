Vagrant::Config.run do |config|
# Every Vagrant virtual environment requires a box to build off of.
config.vm.box = "ubuntu/trusty64"
# Share an additional folder to the guest VM. The first argument is
# an identifier, the second is the path on the guest to mount the
# folder, and the third is the path on the host to the actual folder.
config.vm.share_folder "data", "/data", "./data", :create => "true"
# Enable provisioning with a shell script.
config.vm.provision :shell, :path => "sh/main.sh"

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
	# Every Vagrant virtual environment requires a box to build off of.
	config.vm.box = "ubuntu/trusty64"

	# Boot with a GUI so you can see the screen. (Default is headless)
	# config.vm.boot_mode = :gui

	# Share an additional folder to the guest VM. The first argument is
	# an identifier, the second is the path on the guest to mount the
	# folder, and the third is the path on the host to the actual folder.
	config.vm.share_folder "data", "/data", "./data", :create => "true"

  # UTC        for Universal Coordinated Time
  # EST        for Eastern Standard Time
  # US/Central for American Central
  # US/Eastern for American Eastern
  server_timezone  = "UTC"

	# Enable provisioning with a shell script.
	config.vm.provision :shell, :path => "sh/core.sh", args: [server_timezone]

  nodejs_version = "latest"   # By default "latest" will equal the latest stable version
  nodejs_packages = [          # List any global NodeJS packages that you want to install
    #"grunt-cli",
    #"gulp",
    #"bower",
    #"yo",
  ]

  # Install Nodejs
  config.vm.provision "shell", path: "sh/node.sh", privileged: false, args: nodejs_packages.unshift(nodejs_version, "sh/node.sh")

  # Install Pyenv
  config.vm.provision :shell, :path => 'sh/pyenv.sh', :privileged => false

  # Install Pyenv
  #config.vm.provision :shell, :path => 'sh/pyenv_virtualenvwrapper.sh', :privileged => false

end

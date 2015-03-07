# vagrant-development-environment
Vagrant configuration for a base box for Django and Node.JS development

Provisions a clean Ubuntu 12.04 64-bit server instance with all needed Django and Node.js development tools (Python 3.4.x, Oh-my-Zsh, Node.js, git); services (GitHub, Travis-CI).

## Install Vagrant & VirtualBox

### Install VirtualBox:
[Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Install Vagrant 1.7.x:
[Download Vagrant](https://www.vagrantup.com/downloads.html)

## Setup

### Option 1: Box

```
mkdir "DIR_NAME" && cd "DIR_NAME"
vagrant init alejo8591/vagrant-development-environment
vagrant up
vagrant ssh
```
### Option 2: Vagrantfile

```
git clone https://github.com/alejo8591/vagrant-development-environment.git
cd vagrant-development-environment
vagrant up
vagrant ssh
```

For more see: [https://atlas.hashicorp.com/alejo8591/boxes/vagrant-development-environment](https://atlas.hashicorp.com/alejo8591/boxes/vagrant-development-environment)

## Versioning

For transparency and insight into our release cycle, and for striving to maintain backward compatibility, Bootstrap will be maintained under the Semantic Versioning guidelines as much as possible.

Releases will be numbered with the following format:

` <major>.<minor>.<patch> `

And constructed with the following guidelines:

* Breaking backward compatibility bumps the major (and resets the minor and patch)
* New additions without breaking backward compatibility bumps the minor (and resets the patch)
* Bug fixes and misc changes bumps the patch

[For more information on SemVer, please visit.](http://semver.org/)


## Bug tracker

Have a bug or a feature request? [Please open a new issue](https://github.com/alejo8591/vagrant-development-environment/issues).
+ **¡Allow For!** Before opening any issue, please search for existing issues and read the [Issue Guidelines](https://github.com/necolas/issue-guidelines), written by [Nicolas Gallagher](https://github.com/necolas/).

## License

[MIT](https://github.com/alejo8591/vagrant-development-environment/blob/master/LICENSE)

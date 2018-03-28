.PHONY: launch-vm clean-vm clean-boxes clean-vagrant-metadata

launch-vm-virtualbox: Vagrantfile bootstrap.sh
	vagrant up --provider virtualbox

launch-vm-vmware: Vagrantfile bootstrap.sh
	vagrant up --provider vmware_desktop

clean-vm:
	-vagrant destroy -f

clean-box-virtualbox:
	-rm -f vagrant-macos-homebrew-virtualbox.box

clean-box-vmware:
	-rm -f vagrant-macos-homebrew-vmware.box

clean-boxes: clean-box-virtualbox clean-box-vmware

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-boxes clean-vm clean-vagrant-metadata

vagrant-macos-homebrew-virtualbox.box: clean-box-virtualbox clean-vm launch-vm-virtualbox export.Vagrantfile
	vagrant package --output vagrant-macos-homebrew-virtualbox.box --vagrantfile export.Vagrantfile

vagrant-macos-homebrew-vmware.box: clean-box-vmware clean-vm launch-vm-vmware export.Vagrantfile
	vagrant package-vmware --output vagrant-macos-homebrew-vmware.box --vagrantfile export.Vagrantfile

install-box-virtualbox: vagrant-macos-homebrew-virtualbox.box
	vagrant box add --force --name mcandre/vagrant-macos-homebrew vagrant-macos-homebrew-virtualbox.box

install-box-vmware: vagrant-macos-homebrew-vmware.box
	vagrant box add --force --name mcandre/vagrant-macos-homebrew vagrant-macos-homebrew-vmware.box

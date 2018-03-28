.PHONY: clean-vm clean-vagrant-metadata

all: test

test: test-package-manager

test-boot:
	vagrant up

test-package-manager: test-boot
	vagrant ssh -c 'brew install wget && wget --version'

clean-vm:
	-vagrant destroy -f

clean-vagrant-metadata:
	-rm -rf .vagrant

clean: clean-vm clean-vagrant-metadata

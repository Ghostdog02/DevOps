- It creates and manages VMs. 
- It does not replace hypervisor.
## Advantages
- No OS installation
	- Pre-built VM Images/Box
	- Free box available on Vagrant cloud.
- Vagrantfile
	- Manage all vm settings in a file
	- VM changes through Vagrantfile
	- Provisioning
## Simple commands
- vagrant init boxname
- vagrant up
	- Create or power on the VM
- vagrant ssh
	- To log in
- vagrant halt
	- To power off
- vagrant destroy id

![[VagrantArchitecture.png]]
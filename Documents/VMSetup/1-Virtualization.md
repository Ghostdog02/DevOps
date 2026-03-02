Hypervisor - the software that enables you to create VMs.

## Types of Hypervisors
- Bare Metal 
	- Runs as a Base OS (There is no Host OS)
	- Only for production
	- Eg. VMware exsi, Xen Hypervisor
- Runs as a software
	- Learn and Test
	- Eg. Oracle virtualbox, VMware server

## Ways of running VMs
- Manual 
	- VirtualBox or other Hypervisors with wizard
- Automatic 
	- VirtualBox or other Hypervisors with Vagrant
## Steps to enable virtualization
- Enter BIOS and search for:
	- VTx
	- Secure virtual machine
	- Virtualization
- Problems with virtualization:
	- VT-x is being used by another hypervisor (VERR_VMX_IN_VMX_ROOT_MODE).
		- Fix: 
			  ```
			  sudo modprobe -r kvm_intel
			  sudo modprobe -r kvm
			  ```

		- For persistance:
			```
			echo "blacklist kvm_intel" | sudo tee /etc/modprobe.d/blacklist-kvm.conf
			echo "blacklist kvm" | sudo tee -a /etc/modprobe.d/blacklist-kvm.conf
			```

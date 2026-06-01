## Vagrant sync

- Syncs folder from host machine to guest machine
	- Vagrantfile option 
		- `config.vm.synced_folder "host-path", "guest-path"`
## Provisioning
- Provisioners in Vagrant allow you to automatically install software, alter configurations, and more on the machine as part of the vagrant up process. 
	- It runs only ones when vm is created.
	- If you want to run it again 
		- `vagrant provision`
		- `vagrant reload --provision`

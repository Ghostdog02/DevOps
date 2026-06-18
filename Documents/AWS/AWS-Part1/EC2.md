- Elastic Compute Cloud
1. Description
	- It provides web services for provisioning, managing, and deprovisioning virtual servers inside amazon cloud
	- Easy in scaling up/down
	- Pay only for what you use
	- Can be integrated with other services
2. Pricing
	- Pay per hour or seconds
3. Components
	- AMI - Amazon machine instance - provides information to launch an instance, which is a virtual server in the cloud
	- Instance type - size of instance, the compute resource, how much amount of CPU, ram, network or storage speed.
	- EBS (Elastic Block Store) - Provides you with flexible, cost effective, and easy-to-use data storage options for your instances.
	- Tags - key / value pairs - Good for filtering and billing
	- Security group - firewall
	- Key pair - SSH keys
4. Instance Creation
	1. Requirements Gathering
		1. OS
		2. Size => RAM, CPU, Network Speed etc.
		3. Storage size
		4. Project that you are working on
		5. Services / Apps Running
			- SSH, Http, Mysql etc.
		6. Environment
			- Dev, staging, QA, staging, production
		7. Login user / Owner
	2. Key pairs
	3. Security group
	4. Instance launch
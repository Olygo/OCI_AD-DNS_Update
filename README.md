# OCI_AD-DNS_Update

**OCI_AD-DNS_Update** is a [Cloud-Init](https://docs.oracle.com/en-us/iaas/Content/Compute/Tasks/launchinginstance.htm#:~:text=For%20more%20information%2C%20see%20Getting%20Instance%20Metadata.-,Initialization%20script,-%3A%20User%20data%20to%20be%20used%20by%20cloud) script that updates a Windows Active Directory Domain joined Instance after restoring a clone or a backup.

After a Domain Joined instance is restored, you must update the DNS server addresses associated with the TCP/IP properties on its interface otherwise
the instance may have difficulties to find its Domain Controler which results in a slowdown at the first start.

Updating the restored instance during the provisionning fixes this issue transparently.

![Script Output](https://objectstorage.eu-frankfurt-1.oraclecloud.com/p/ArOLIb0vUtXvhlffPSXKqA1V7pkm4l_Ecrj7pqEXWJ6tL-BSGg41CWqsIEeUMOa9/n/olygo/b/git_images/o/OCI_AD-DNS_Update/cloudinit.png)


# Prerequisites 
- Edit **cloudinit.ps** variable to use your own domain controler IP

		$DCip = "10.0.0.100”


## Questions ?
**_olygo.git@gmail.com_**


## Disclaimer
**Please test properly on test resources, before using it on production resources to prevent unwanted outages or unwanted bills.**

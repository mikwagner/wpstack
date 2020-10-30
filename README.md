# wpstack

1. Get a free OCI trial.
https://www.oracle.com/cloud/free/

2. Create a compute instance and ensure docker is installed.  You might need to allow incoming traffic on port 80 in the firewall.
$ sudo yum update;
$ sudo yum install docker;
https://oracle-base.com/articles/linux/linux-firewall-firewalld
https://blogs.oracle.com/virtualization/install-docker-on-oracle-linux-7-v2
security, from the console:
oci > network > vcn > seclist > add port 80 from anywhere (ala ssh)

and/or check iptables, firewall-cmd, etc..
¯\_(ツ)_/¯ 

3. Run wpstack.sh.  Make sure to edit your desired passwords, etc. prior to running.

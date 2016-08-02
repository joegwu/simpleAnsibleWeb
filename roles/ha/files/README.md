HaProxy deployment
Requires Ansible 1.2 or newer
Expects CentOS/RHEL 6.x hosts
These playbooks deploy a very basic implementation of Haproxy on a RHEL6 server

to run the playbook
1. vi haproxy.yml and to modify the variable (vars) section 
2. vi hosts to set up the correct haProxy server's IP
3a. ansible-playbook -i hosts haproxy.yml
OR
3b. ansible-playbook  haproxy.yml -u <user> -s -k

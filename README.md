# simpleAnsibleWeb

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 6.x hosts

## preparation steps:
1. vi hosts
        modify files to set the correct ip address of web servers where httpd will be loaded. you can have more than two web servers in this file.
2. vi group_var/ha
        modify the variables accordingly. at this point, this play book supports two web server for a HA server


Then run the playbook, like this:

####### A: using HA configuration
to install httpd servers
        ansible-playbook -i hosts web.yml
to install ha servers
        ansible-playbook -i hosts ha.yml
when the playbook complete you should be able to access to the web page at HA server's ip address, which will redirect to https protocol




####### B: only for single webserver (you have install many web server at the same time)
vi roles/web/tasks/main.yml to uncomment following fields
 - name: reconfigure httpd.conf file
   shell: cat /tmp/reconfig_httpd.txt >> /etc/httpd/conf/httpd.conf
then run
        ansible-playbook -i hosts web.yml

when the playbook complete you should be able to access to the web page at the webpage's ip address, which also redirect to https protocol




This is a very simple playbook and could serve as a starting point for more
complex projects.

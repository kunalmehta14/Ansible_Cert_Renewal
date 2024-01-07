############ Custom function for log rotate process for ansible and traefik logs ############
#!/bin/bash

find /var/log/ -name "/var/log/ansible.log" -type f -delete #Deleting Log Files Older than 5 Days
touch /var/log/ansible.log
chmod +x /path/to/ansible_service/ansible.log

find /var/log/traefik/ -name "access.log" -type f -delete #Deleting Log Files Older than 30 Days
touch /var/log/traefik/access.log
chmod +x /var/log/traefik/access.log
docker restart traefik-service
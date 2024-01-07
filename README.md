## Ansible Let's Encrypt Certificate Renewal

> This repository contains Ansible scripts and supporting configurations to automate the renewal of Let's Encrypt certificates and update Traefik-ReverseProxy configurations accordingly.
>
> The process involves checking the expiration status of the certificate, generating a new certificate if expired, updating the Traefik-ReverseProxy service, and restarting the Docker container.

### Usage Instructions

Follow these steps to use the scripts for your own project:
#### Clone the Repository:
````
git clone https://github.com/kunalmehta14/Ansible_Cert_Renewal.git
cd Ansible_Cert_Renewal
````
#### Install Ansible:
> Make sure you have the latest version of Ansible installed on your system.
>
> Use the following documentation to install ansible: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
#### Update Paths:
> Open the Ansible playbook (site.yml) and update the path_example "/path/to" with the paths used in your configuration
#### Configure Crontab:
> Adjust the crontab configuration (crontab-config) according to your preferences. The current configuration triggers the Ansible script every day at 1 AM.
#### Cloudflare API Token:
> Edit the cloudflare.ini template file and replace "dns_cloudflare_api_token" with the token generated from your Cloudflare dashboard.
>
> Note: To confirm if your ansible token works or not with letsencrypt, you can "--dry-run" for the play name "Certbot_certificate Renewal" in the ansible-playbook site.yml using the following syntax: <br>
certbot certonly --dns-cloudflare --dns-cloudflare-credentials /path/to/ansible_service/clouflare.ini -d '<domain-name>' --dry-run
>
> This also requires installing the Cloudflare plugin seprately. For information view the following documentation: https://certbot-dns-cloudflare.readthedocs.io/en/stable/
#### Logging:
> Check the /var/log/ansible.log file for session details.
#### Optional: Customize Log Rotation:
> Customize log rotation if needed, modify the logrotate.sh script and adjust the crontab accordingly. Currently the crontab is set to run the logrotate.sh every Sunday at 2 AM.

### Note
This Ansible configuration was created in conjunction with the Traefik-ReverseProxy service; however, it is capable of serving any reverse proxy or web service with the required adjustments.

If you're interested in learning how to deploy the Traefik Reverse Proxy solution, visit this repository to view a template configuration: https://github.com/kunalmehta14/reverse-proxy.git

Happy Automating!
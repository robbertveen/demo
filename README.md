# Role Name

A brief description of the role goes here.

## Requirements

# https://ayeshasilvia.medium.com/testing-ansible-playbook-in-a-docker-container-21628e9ee256

sh ./container-start-and-playbook-run.sh

# throw away all images

docker rm -f $(docker ps -aq)

# create role with ansible-galaxy

Using the ansible-galaxy command line tool that comes bundled with Ansible, you can create a role with the init command. For example, the following will create a role directory structure called test-role-1 in the current working directory:

$ ansible-galaxy init test-role-1

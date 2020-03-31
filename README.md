# netplan-scripting-with-ansible-bash

Author: Shail Patel

Automation using ansible: To configure netplan using bash and ansible.

Description:

This is a simple user interactive ansible playbook to statically configure Ubuntu 18.04 Desktop netplan interfaces. This playbook Leverages a statically configured bash script to configure netplan for a single interface using a single static IP and a gateway.

Usage:

1. Place the 'scriptnetplan.sh' into the remote node manually or add a copy command into the provided playbook to copy the script to the remote server and then execute it.

2. Run 'netplan_playbook.yml' from your ansible server against the remote server. The ansible will throw user prompts to input the interface name, static ip, and a gateway using the mentioned format in the playbook.

3. Upon entering the inputs in correct format, ansible will deploy netplan into the designated server. Run 'ifconfig' into the designated server and you will notice an interface has been configured :)

To Do:

1. Script playbook and bash to prompt for interfaces > 1
2. Prompt for entering {interface name, staticip and gateway} == {times(prompt_number_of_interfaces_entered)}
3. Configure multiple Static IPs on a single ethernet interface.

bootstrap Cookbook
==================

This cookbook is used for customizing the OS and finishing the bootstrap process.

The following recipes make up this cookbook:

	apt_update - runs 'apt-get update' on debian nodes.  This was necessary for package installs.
	ntp - sets up standard ntp configuration.
	snmp - sets up standard snmp configuration.
	sshd - sets up standard sshd configuration.
	users - sets up local users.  
	sudoers - sets up standard sudo configuration.
	rm_chefdk - removes chef-dk.  Chef-dk was required for vRealize Automation to bootstrap nodes when provisioned.


Requirements
------------

This cookbook does not have any requirements or dependencies.


Usage
-----

It automatically runs from nodes built from vRealize Automation.

To run manually bootstrap the node with `bootstrap` in your node's `run_list` or run /home/chef-repo/cookbook.sh locally on node.
This is an example Puppet infrastructure for the [Puppet Beginner's Guide, Second Edition](http://bitfieldconsulting.com/pbg2). It illustrates all the techniques and concepts described in the book, and draws them together into a complete working infrastructure which you can copy and use in your own projects. While you don't have to buy the book to use the demo repo, I'd obviously be very happy if you did.

To try it out, clone the repo and then run 'vagrant up' from within the repo directory. (If you don't have Vagrant installed, go to the [Vagrant Downloads page](https://www.vagrantup.com/downloads.html)).

Alternatively, to bootstrap a server, all you will need is the IP address or DNS name of the target server. Run the following command from the Puppet repo, replacing `TARGET_SERVER` with the address or name of the server, and `HOSTNAME` with the hostname that you want to set (for example `demo`):

    scripts/puppify TARGET_SERVER HOSTNAME

The demo repo is built on a skeleton Puppet control repo available from [the Puppet GitHub account](https://github.com/puppetlabs/control-repo).

It adds everything required for a typical Puppet infrastructure, including user accounts and SSH keys, SSH and sudoers config, timezone and NTP settings, Hiera data, resources to automatically update and run Puppet, and a bootstrap script for bringing new servers under Puppet management. It also includes a Vagrantfile so you can try out the repo on a Vagrant virtual machine.

You can also find all the code examples from the book in the [Puppet Beginner's Guide example repo](https://github.com/bitfield/puppet-beginners-guide).

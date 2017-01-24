#!/bin/bash
/opt/puppetlabs/bin/puppet apply --environment production /etc/puppetlabs/code/environments/${environment}/manifests/* $*

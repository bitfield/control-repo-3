#!/bin/bash
environment=${PUPPET_ENV:-production}
/opt/puppetlabs/puppet/bin/r10k puppetfile install
/opt/puppetlabs/bin/puppet apply --environment ${environment} --strict=warning /etc/puppetlabs/code/environments/${environment}/manifests/* $*

#!/bin/bash
environment=${PUPPET_ENV:-production}
cd /etc/puppetlabs/code/environments/${environment}
/opt/puppetlabs/puppet/bin/r10k puppetfile install
/opt/puppetlabs/bin/puppet apply --environment ${environment} --strict=warning /etc/puppetlabs/code/environments/${environment}/manifests/ $*

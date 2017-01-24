#!/bin/bash
environment=${ENVIRONMENT:-production}
/opt/puppetlabs/bin/puppet apply --environment ${environment} /etc/puppetlabs/code/environments/${environment}/manifests/* $*

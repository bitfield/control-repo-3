#!/bin/bash
environment=${ENVIRONMENT:-production}
/opt/puppetlabs/bin/puppet apply --environment ${environment} --strict=error /etc/puppetlabs/code/environments/${environment}/manifests/* $*

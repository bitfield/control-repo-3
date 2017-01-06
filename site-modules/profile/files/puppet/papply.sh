#!/bin/bash
environment=${1:-production}
/opt/puppetlabs/bin/puppet apply --environment ${environment} /etc/puppetlabs/code/environments/${environment}/manifests/*

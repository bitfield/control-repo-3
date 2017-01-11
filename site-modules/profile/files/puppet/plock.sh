#!/bin/bash

usage() {
  echo "$0 reason

Creates a Puppet lockfile to prevent runs by auto-run, deploys, and other folks.

A reason is required."
  exit 1
}

# Require a reason.
if [[ "$*" == "" ]]; then
  usage
fi

LOCKFILE=/var/tmp/puppet.lock
if [ -e ${LOCKFILE} ]; then
  REASON=`cat ${LOCKFILE}`
  if [ "${REASON}" == "" ]; then
    REASON='none'
  fi
  echo "Won't lock.  Puppet is already locked.  Reason:  ${REASON}"
  exit 1
else
  echo "$*" > ${LOCKFILE}
  echo "Puppet is now locked."
  exit 0
fi

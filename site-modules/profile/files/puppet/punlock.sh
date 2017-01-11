#!/bin/bash

set -e

LOCKFILE=/var/tmp/puppet.lock
if [ -e ${LOCKFILE} ]; then
  REASON=`cat ${LOCKFILE}`
  if [ "${REASON}" == "" ]; then
    REASON='none'
  fi

  rm ${LOCKFILE}
  echo "Puppet is now unlocked.  Reason was:  ${REASON}"
else
  echo "Puppet is already unlocked."
fi

exit 0

#!/bin/bash
PUPPET_REPO=$1
HOSTNAME=$2
BRANCH=$3
hostname ${HOSTNAME}
echo ${HOSTNAME} >/etc/hostname
source /etc/lsb-release
wget http://apt.puppetlabs.com/puppetlabs-release-pc1-${DISTRIB_CODENAME}.deb
dpkg -i puppetlabs-release-pc1-${DISTRIB_CODENAME}.deb
apt-get update && apt-get -y install git puppet-agent
cd /etc/puppetlabs/code/environments
mv production production.orig
git clone ${PUPPET_REPO} production
cd production
git checkout ${BRANCH}
echo 'environmentpath=$codedir/environments' >>/etc/puppetlabs/puppet/puppet.conf
touch /var/tmp/puppet.lock
/opt/puppetlabs/puppet/bin/gem install r10k --no-rdoc --no-ri
/opt/puppetlabs/puppet/bin/r10k puppetfile install --verbose
/opt/puppetlabs/bin/puppet apply --environment=production /etc/puppetlabs/code/environments/production/manifests
rm /var/tmp/puppet.lock

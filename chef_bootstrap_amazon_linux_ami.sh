#!/bin/bash
# Paste this in the userdata field while launching a new instance.

yum -y install make gcc-c++ zlib-devel openssl-devel
yum -y install ruby-devel ruby-irb ruby-rdoc ruby-ri

cd /tmp
curl -O http://production.cf.rubygems.org/rubygems/rubygems-1.3.7.tgz
tar xfz rubygems-1.3.7.tgz
ruby rubygems-1.3.7/setup.rb

gem install chef ohai --no-rdoc --no-ri

mkdir /etc/chef
chown ec2-user:ec2-user /etc/chef

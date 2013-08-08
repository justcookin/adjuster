#!/usr/bin/env bash

apt-get update
apt-get -y install libdancer-perl libtext-aspell-perl aspell libxml-simple-perl perlmagick imagemagick 
# apt-get install -y libwww-perl liburi-encode-perl liburi-perl
cd /vagrant
perl Adjuster/bin/app.pl

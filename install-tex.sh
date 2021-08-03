#!/usr/bin/env bash
#
 
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz 
tar -zxf install-tl-unx.tar.gz
cd install-tl-20*
./intall-tl --profile /vagrant/texlive.profile

source /vagrant/setup-user-packages.sh

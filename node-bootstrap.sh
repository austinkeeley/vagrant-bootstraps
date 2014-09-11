#!/bin/sh

# Create a new Python virutalenv for installing Node.js.  This probably isn't
# required.

mkdir /tmp/node-virtualenv
virtualenv /tmp/node-virtualenv
source /tmp/node-virtualenv/bin/activate

curl -L http://nodejs.org/dist/v0.10.31/node-v0.10.31.tar.gz > /tmp/node-v0.10.31.tar.gz
tar -xvf /tmp/node-v0.10.31.tar.gz -C /tmp
cd /tmp/node-v0.10.31.tar.gz && ./configure && make && make install

deactivate

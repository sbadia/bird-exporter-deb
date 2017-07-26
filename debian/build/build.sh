#!/bin/bash
set -xe
mk-build-deps -i -r -t 'apt-get -y' /opt/bird-exporter-deb/debian/control
pushd /opt/bird-exporter-deb && gbp buildpackage $GIT_BUILDPACKAGE_OPTIONS
cp /tmp/build-area/* /tmp/bird-exporter-deb

# Installs cloud-init and Python environment
#
# Author: Paul Czarkowski
# Date: 10/20/2013


FROM ubuntu:quantal
MAINTAINER Paul Czarkowski "paul.czarkowski@rackspace.com"

RUN apt-get update

RUN apt-get -y install cloud-init

RUN apt-get -y install python-pip curl

ADD openstack-agent /usr/local/bin/openstack-agent
ADD buildapp /usr/local/bin/buildapp
ADD runapp  /usr/local/bin/runapp

RUN chmod +x /usr/local/bin/openstack-agent /usr/local/bin/buildapp /usr/local/bin/runapp

CMD ["/usr/local/bin/openstack-agent"]

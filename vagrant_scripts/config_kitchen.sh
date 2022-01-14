#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive


pushd /home/vagrant/nothing-module/example
gem install bundler
bundle install
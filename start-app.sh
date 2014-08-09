#! /bin/bash

source /usr/local/rvm/scripts/rvm
rvm install $(cat .ruby-version)
rvm use $(cat .ruby-version)
bundle install --deployment --quiet

bundle exec rackup -p 3000

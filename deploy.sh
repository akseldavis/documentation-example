#!/bin/bash

git submodule add https://github.com/ggenzone/jekyll-theme dependencies/jekyll

mv dependencies/jekyll/prod-build.sh ./ && ./prod-build.sh

bundle install
rake buildAll
rake publish

#bundle exec rake deploy

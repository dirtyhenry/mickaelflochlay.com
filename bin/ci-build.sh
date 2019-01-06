#!/usr/bin/env bash
set -e # halt script on error

JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_production.yml
bundle exec htmlproofer ./_site

#!/usr/bin/env bash
set -e # halt script on error

JEKYLL_ENV=production bundle exec jekyll build --config _config.yml
bundle exec htmlproofer ./_site --http-status-ignore "999"

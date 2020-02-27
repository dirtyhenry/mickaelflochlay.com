#!/usr/bin/env bash
set -e # halt script on error

JEKYLL_ENV=production bundle exec jekyll build --config _config.yml

# dailymotion returns 503 no error for videos links 🤷‍♂️
bundle exec htmlproofer --url-ignore "/www.dailymotion.com/" ./_site --http-status-ignore "999"

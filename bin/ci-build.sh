#!/usr/bin/env bash
set -e # halt script on error

JEKYLL_ENV=production bundle exec jekyll build --config _config.yml

# dailymotion returns 503 no error for videos links 🤷‍♂️
# mickaelflochlay.com is offline so let's ignore it while offline
bundle exec htmlproofer \
  --url-ignore "/www.dailymotion.com/" \
  --url-ignore "/mickaelflochlay.com/" \
  --http-status-ignore "999" \
  ./_site 

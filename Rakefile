namespace :mickaelflochlay do
  desc "Production Build"
  task :build_prod do
    sh "JEKYLL_ENV=production jekyll build --config _config.yml,_config_production.yml"
  end

  desc "Development Build"
  task :build_dev do
    sh "jekyll build --config _config.yml"
  end

  desc "Deploy Production"
  task :deploy_prod => [:build_prod] do
    # Add --dry-run for debugging
    sh "rsync --archive --compress --verbose --delete --exclude-from=excludes.txt ~/Developer/Projects/Personal/Code/mickaelflochlay.com/_site dirtyhenry@emmett:~/work/websites/mickaelflochlay.com/"
  end
end

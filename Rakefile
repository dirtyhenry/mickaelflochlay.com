namespace :mickaelflochlay do
  desc "Production Build"
  task :build_prod do
    sh "jekyll build --config _config.yml,_config_production.yml"
  end

  desc "Staging Build"
  task :build_staging do
    sh "jekyll build --config _config.yml,_config_staging.yml"
  end

  desc "Development Build"
  task :build_dev do
    sh "jekyll build --config _config.yml"
  end

  desc "Create directories"
  task :create_dir do
    sh "mkdir -p ~/Developer/build/mickaelflochlay.com-gh-pages"
    sh "mkdir -p ~/Developer/build/mickaelflochlay.com-pow"
    sh "ln -Ffvs ~/Developer/build/mickaelflochlay.com-gh-pages ~/Developer/build/mickaelflochlay.com-pow/public"
    sh "cd ~/.pow && ln -s ~/Developer/build/mickaelflochlay.com-pow mickaelflochlay.com"
  end
end

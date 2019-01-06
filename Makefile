clean:
	rm -rf _site node_modules

install:
	bundle install
	yarn install

build:
	bundle exec jekyll build

run:
	bundle exec jekyll serve

test:
	./bin/ci-build.sh

deploy:
	./bin/ci-build.sh
	# Add --dry-run for debugging
	sh "rsync --archive --compress --verbose --delete --exclude-from=excludes.txt ./_site dirtyhenry@emmett:~/work/websites/mickaelflochlay.com/"

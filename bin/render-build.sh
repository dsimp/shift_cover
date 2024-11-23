set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
#!/bin/bash
set -e

# Clear previous gems to avoid version conflicts
rm -rf .bundle
rm -rf vendor/bundle

# Install gems
bundle install --path vendor/bundle
rm *.gem
gem build octocore-cassandra.gemspec && gem uninstall octocore-cassandra --force
find . -name '*.gem' | xargs gem install

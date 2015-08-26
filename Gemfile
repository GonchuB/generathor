source "https://rubygems.org"

# Internal dependencies #

gem "r_core", git: "git@github.com:restorando/engines", branch: "master"
gem "pannacotta", git: "git@github.com:restorando/pannacotta.git", branch: "master"

git "git@github.com:restorando/agenda", glob: "engines/*/*.gemspec", branch: "master" do
  gem "rebs"
end

git "git@github.com:restorando/redo", glob: "engines/*/*.gemspec", branch: "master" do
  gem "redo"
end

# External dependencies #

gem "rails", "4.1.10"
gem "mysql2"
gem "haml"
gem "sass-rails", "~> 4.0.3"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "jquery-rails"
gem "iconv", "~> 1.0.3"

# bundle exec rake doc:rails generates the API under doc/api.
gem "sdoc", "~> 0.4.0", group: :doc

# Use unicorn as the app server
gem "unicorn", group: [:staging, :production]

group :development, :test do
  gem "puma"
  gem "pry"
  gem "erb2haml"
  gem "rubocop", "0.26.1", require: false
  # Rubocop uses parser, which sends a warning when the version doesn"t match with your current ruby
  # v 2.2.0.pre.4 is the one that matches with ruby 2.1.2 (and thus, doesn"t emit the warning)
  gem "parser", "2.2.0.pre.4", require: false
end

# frozen_string_literal: true

source 'https://rubygems.org'

ruby '2.7.4'

gem 'activerecord-import', '>= 1.0.7'
gem 'acts_as_list', '>= 1.0.1'
gem 'angular-rails-templates', '>= 1.0.0.beta'
gem 'bcrypt', '~> 3.1.7'
gem 'sassc-rails', '~> 2.1'
gem 'turbolinks', '~> 5'
gem 'colorize', require: false
gem 'cookies_eu'
gem 'devise', '>= 4.6.2'
gem 'devise_invitable', '~> 2.0'
gem 'gabba'
gem 'intercom-rails'
gem 'jbuilder', '~> 2.7'
gem 'redis', '~> 4.0'
gem 'jquery-rails'
gem 'jquery-ui-rails' # Can we narrow the widgets to load faster?
gem 'mysql2'
gem 'postmark-rails'
gem 'puma', '~> 5.0'
gem 'puma_worker_killer'
gem 'pundit'
gem 'rails', '= 6.1.4.1' # starting Rails 6 the webpack is included by default.
gem 'responders'
gem 'sidekiq'
gem 'terser'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'listen', '~> 3.3'
gem 'd3-rails', '~> 3.5.5' # we have a very old version of D3.  This provides D3 assets.
gem 'cal-heatmap-rails', '~> 3.6' # provides assets for cal heatmap, that requires old d3
gem 'webpacker', '= 5.4.0'
gem 'rack-cors', '~> 1.1'
gem 'foreman'

group :development, :test do
  gem 'annotate'
  gem 'bullet'
  gem 'byebug'
  gem 'memory_profiler'
  # rubocop:disable Layout/LineLength
  gem 'rack-mini-profiler', git: 'https://github.com/MiniProfiler/rack-mini-profiler' # pending release with PR 505 included
  # rubocop:enable Layout/LineLength
end

group :development do
  gem 'derailed_benchmarks'
  gem 'letter_opener'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rails-erd', '~> 1.6'
end

group :test do
  gem 'minitest-reporters', '>= 0.5.0'
  gem 'mocha', '~> 1.11'
  gem 'simplecov', require: false
  gem 'webmock'
  gem 'rails-controller-testing' # bring back compatibility with rails 4 assigns in controller tests.
end

gem 'omniauth', '~> 2.0'

gem 'omniauth-keycloak', '~> 1.3'

gem 'omniauth-rails_csrf_protection', '~> 1.0'

gem 'omniauth-google-oauth2', '~> 1.0'

gem 'rails-healthcheck', '~> 1.4'

gem "font_awesome5_rails", "= 1.5.0"

gem "sassc", "~> 2.4"

# Require the airbrake gem in your App.
# ---------------------------------------------
#
# Ruby - In your Gemfile
# gem 'airbrake', '~> 5.0'
#
# Then add the following to config/initializers/errbit.rb
# -------------------------------------------------------

Airbrake.configure do |config|
  config.host = ENV['ERRBIT_HOST']
  config.project_id = 1 # required, but any positive integer works
  config.project_key = ENV['ERRBIT_PROJECT_KEY']
  
  # Uncomment for Rails apps
  config.environment = Rails.env
  config.ignore_environments = %w(development test)
end

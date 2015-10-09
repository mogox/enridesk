# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

require 'le'
if Rails.env.development?
	Rails.logger = Le.new(ENV['logentries'], local: true,  debug: true)
else
	Rails.logger = Le.new(ENV['logentries'], debug: true)
end

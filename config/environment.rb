# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Jqrwb::Application.initialize!

if Rails.env.development?
  Rails.logger = Le.new('a870e1c1-4ab7-4e6c-a493-9dc4bbfa10fd')
else
  Rails.logger = Le.new('a870e1c1-4ab7-4e6c-a493-9dc4bbfa10fd')
end

Rails.logger.info("INFORMACAO")
Rails.logger.warn("PERIGO")
Rails.logger.debug("DEBUG")

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SalesVergeMarketing2::Application.initialize!

if Rails.env.development?
  HOST = "localhost:3000"
else
  HOST = "http://www.salesverge.com"
end

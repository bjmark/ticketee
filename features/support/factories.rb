Dir[Rails.root + "factories/*.rb"].each do |file|
  require file
end

require 'email_spec'
require 'email_spec/cucumber'

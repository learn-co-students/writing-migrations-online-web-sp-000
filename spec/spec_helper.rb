ENV["SCHOOL_ENV"] = "test"

require_relative '../config/environment'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.order = 'default'
end

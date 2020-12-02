ENV["SCHOOL_ENV"] = "test"

require_relative '../config/environment'
require_relative '../db/migrate/02_add_grade_and_birthdate_to_students'
require_relative '../db/migrate/03_change_datatype_for_birthdate'
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.order = 'default'
end

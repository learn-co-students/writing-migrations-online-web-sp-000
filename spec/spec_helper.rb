require_relative '../lib/model/student.rb'

ENV["SCHOOL_ENV"] = "test"

require_relative '../config/environment'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.order = 'default'

  config.before do
    # reset_database
  end
end

def reset_database
  migrate_db
end

def drop_db
  sql = "DROP TABLE IF EXISTS students"
  ActiveRecord::Base.connection.execute(sql)
end

def clean_database
  Student.delete_all if defined?(Student) && DB.tables.include?("students")
end
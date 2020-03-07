require 'bundler/setup'
Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

ENV["SCHOOL_ENV"] ||= "development"

DBRegistry[ENV["SCHOOL_ENV"]].connect!
DB = ActiveRecord::Base.connection

if ENV["SCHOOL_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

def drop_db
  DB.tables.each do |table|
    DB.execute("DROP TABLE #{table}")
  end
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/students.sqlite"
)
# require_relative "../db/migrate/01_create_students.rb"
# require_relative "../db/migrate/02_add_grade_and_birthday_to_students.rb"
# require_relative "../db/migrate/03_change_datatype_for_birthdate"

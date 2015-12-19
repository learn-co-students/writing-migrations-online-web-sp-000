require 'active_record'
include ActiveRecord::Tasks

DatabaseTasks.db_dir = 'db'
DatabaseTasks.migrations_paths = ['db/migrate']

load 'active_record/railties/databases.rake'

task :console => :environment do
  Pry.start
end

task :environment do
  require_relative 'config/environment'
end

namespace :db do
  task :drop => :environment do
    puts "Dropping tables"
    drop_db
  end
end

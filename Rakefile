task :environment do
  ENV["SCHOOL_ENV"] ||= "development"
  require_relative 'config/environment'
end

namespace :db do
  task :migrate => :environment do
    migrate_db
  end

  task :drop => :environment do 
    drop_db
  end
end

task :console => :environment do
  Pry.start
end
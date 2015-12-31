require 'ostruct'
require_relative './connection_adapter'
DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/school-test.db"), 
  development: ConnectionAdapter.new("db/school-development.db"), 
  production: ConnectionAdapter.new("db/school-production.db")
)

class CreateStudents < ActiveRecord::Migration[5.1]

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      title TEXT,
      length INTEGER
      )
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

  def change
    create_table :artists do |t|
      t.string :name
    #   t.string :genre
    #   t.integer :age
    #   t.string :hometown
    
    end

  end

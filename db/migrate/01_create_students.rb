class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
       t.string :name
  end
end
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS students (
  id INTEGER PRIMARY KEY,
  name TEXT,
  grade INTEGER,
  birthdate TEXT
  )
SQL
 
ActiveRecord::Base.connection.execute(sql)
end

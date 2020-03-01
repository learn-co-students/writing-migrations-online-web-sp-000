class CreateStudents < ActiveRecord::Migration[5.1]
  
  def change
    create_table :students do |s|
      s.string :name
      #s.string :genre
      #s.integer :age
      #s.string :hometown
    end
  end
end

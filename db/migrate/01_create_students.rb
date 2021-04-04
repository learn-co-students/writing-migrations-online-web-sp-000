class CreateStudents < ActiveRecord::Migration[5.2]
  
  def change
    create_table :students do |students|
      students.string :name
    end 
  end 
  
  
end

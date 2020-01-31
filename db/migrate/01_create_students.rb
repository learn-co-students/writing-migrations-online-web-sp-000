class CreateStudents < ActiveRecord::Migration[5.1]
  
  def create 
    create_table :students do |t|
      t.string :name 
    end 
  end 
  
end

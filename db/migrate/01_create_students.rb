class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |student|
      student.string :name
    end 
  end
end

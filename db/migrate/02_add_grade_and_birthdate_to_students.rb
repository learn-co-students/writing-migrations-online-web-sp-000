class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def up 
  end
  
  def down 
  end
  
  def change 
    add_column :students, :grade, :integer
    add_column :students, :birthdate, :string
  end
end
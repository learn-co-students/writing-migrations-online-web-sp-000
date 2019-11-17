class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change 
    change_table :students do |t|
      t.integer :grade 
      t.string :birthdate
    end
  end
end
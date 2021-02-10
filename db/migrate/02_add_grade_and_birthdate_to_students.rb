class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.2]
  def change
    change_table :students do |a|
      a.integer :grade
      a.string :birthdate
    end
  end
end

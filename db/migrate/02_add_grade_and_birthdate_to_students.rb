class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :grade, :interger
      add_column :students, :birthdate, :interger
  end
end

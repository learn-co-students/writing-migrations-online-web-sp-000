class  AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column(:grade, :birthdate)
  end
end

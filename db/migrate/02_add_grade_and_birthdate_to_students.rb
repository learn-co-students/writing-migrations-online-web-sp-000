class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column(Student.table_name, :grade, :integer)
    add_column(Student.table_name, :birthdate, :string)
  end
end

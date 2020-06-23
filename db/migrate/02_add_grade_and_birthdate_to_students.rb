class AddGradeAndBirthdateToStudents <  ActiveRecord::Migration[5.1]
  def change
    add_column :students, :grade, :INTEGER
    add_column :students, :birthdate, :STRING
  end
end

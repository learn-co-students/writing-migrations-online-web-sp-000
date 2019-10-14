class AddGradeAndBirthdateToStudents < ActiveRecord::Migration
  def change
    add_column :grade, :integer, :birthdate, :string
  end
end

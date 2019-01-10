class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]

  def change
    add_column :mystudents, :grade, :integer
    add_column :mystudents, :birthdate, :string
  end

end

class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]

  def change
    add_column :Students, :grade, :integer
    add_column :Students, :birthdate, :string
    end
  end


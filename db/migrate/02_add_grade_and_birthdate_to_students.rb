class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
    def change
        add_column :students, :birthdate, :integer
        add_column :students, :grade, :string
    end
end
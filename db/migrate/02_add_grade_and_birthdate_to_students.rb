class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.2]
    def change 
        add_column :students, :birthdate, :string
        add_column :students, :grade, :integer
    end 
end 
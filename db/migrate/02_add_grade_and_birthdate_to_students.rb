class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
    def change
        add_column :students, :grade, :ingteger
        add_column :students, :birthdate, :string
    end
end
class CreateStudents < ActiveRecord::Migration[5.1]
    def change
        create_table :students do |table|
            table.string :name
        end
    end
end

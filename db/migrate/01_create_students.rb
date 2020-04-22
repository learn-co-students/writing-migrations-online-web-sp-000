class CreateStudents < ActiveRecord::Migration[5.1]

    def change
        create_table :students do |a|
            a.string :name 
        end
    end
end

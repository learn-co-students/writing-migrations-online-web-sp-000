class CreateStudents < ActiveRecord::Migration[4.2]
    def change
        create_table :students do |s|
            s.string :name
            
        end
    end
end

class CreateStudents < ActiveRecord::Migration[5.1]

    def up
    end

    def down
    end

    def change
        create_table :students do |s|
            s.string :name
        end
    end
end

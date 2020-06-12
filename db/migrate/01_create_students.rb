class CreateStudents < ActiveRecord::Migration[5.1]
    def up
    end
   
    def down
    end

    #used to write migrations
    def change
        create_table :students do |t|
            t.string :name
        end
    end
end

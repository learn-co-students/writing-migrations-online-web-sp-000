class Student < ActiveRecord::Base
    def change
        create_table :students do |t|
          t.string :name
        end
      end
     end

class CreateStudents < ActiveRecord::Migration[5.2]

    def change
      create_table :students do |t|
        t.string :name
      end
    end
  end

# Active Record create table method within change method
# name column with type string
# rake db:migrate to run the migrations

class CreateStudents < ActiveRecord::Migration[5.1]

def change
#Define a method called change and use the
#Active Record create_table method within that
#method to create the table. The table should
#have a :name column with a type string.
  create_table :students do |t|
    t.string :name
  end
end

end

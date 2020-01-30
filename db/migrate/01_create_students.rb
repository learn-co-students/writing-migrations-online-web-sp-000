class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
    end
  end 
end

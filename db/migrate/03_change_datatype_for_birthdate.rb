class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.2]
  def change_column(table_name,column_name,type)
    add_column :students do |t|
    t.integer :grade
    t.string :birthdate 
  end 
end
end 
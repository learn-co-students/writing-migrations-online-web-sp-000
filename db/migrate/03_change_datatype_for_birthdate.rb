class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]

  def change_column(table_name, column_name, type)
    add_column :students do |t|
      t.string :name
      t.integer :grade
      t.datetime :birthdate
    end
  end
end

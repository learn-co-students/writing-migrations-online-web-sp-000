class AddGradeAndBirthdateToStudents< ActiveRecord::Migration[5.1]

  def change
    add_column :name, :grade, :birthdate
      t.string :name
      t.integer :grade
      t.string :birthdate
  end
end
end

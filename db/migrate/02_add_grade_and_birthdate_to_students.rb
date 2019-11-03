class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change
<<<<<<< HEAD
    add_column :students , :grade, :integer
    add_column :students , :birthdate, :String
=======
    add_column :students do |t|
      t.integer :grade,
      t.string :birthdate
    end
>>>>>>> e6131e279ce3c7d6fd241d74225d3ca7c27a5ec3
  end
end

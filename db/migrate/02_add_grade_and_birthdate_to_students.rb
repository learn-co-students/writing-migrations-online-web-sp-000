class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.2]

  def change
add_column :students, :grade, :integer
add_column :students, :birthdate, :string
end
end




#Active Record Method add_column
# grade column integer, birthdate column string,

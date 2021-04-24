class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column(:students, :grade, :integer)
    add_column(:students, :birthdate, :string)
    # add_column :students do |t|
    # t.integer :grade
    # t.string :birthdate 
  end 
end 

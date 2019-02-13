class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :grade, :integer
    add_column :birthdate, :string
  end
end
end

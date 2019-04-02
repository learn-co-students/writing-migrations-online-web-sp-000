class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]
  def change
    change_column(Student.table_name, :birthdate, :datetime)
  end
end

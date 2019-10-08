class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.2]
  def change
    change_column(:students, :birthdate, :integer)
  end
end
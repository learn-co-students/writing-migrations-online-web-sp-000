class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]

  def change
    change_column :Students, :birthdate, :datetime
  end
end


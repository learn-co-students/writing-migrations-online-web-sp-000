class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]

  def change
    change_column :mystudents, :birthdate, :datetime
  end

end

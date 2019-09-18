class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.2]
   def change
      change_column :student, :birthdate, :datetime
    end
end
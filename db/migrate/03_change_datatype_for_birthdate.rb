class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]
  def up 
  end
  
  def down 
  end
  
  def change
    change_column(:students, :birthdate, :datetime)
  end
end
class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.2]
  def change
    change_column(:students, :birthdate, :datetime)
    # add_column :students do |t|
    # t.integer :grade
    # t.string :birthdate 
  end 
end

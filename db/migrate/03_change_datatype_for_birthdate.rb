class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]
    # def change
    #     change_column :students, :birthdate, :datetime
    # end
    def up
        change_column :students, :birthdate, :datetime
    end

    def down
        change_column :students, :birthdate, :string
    end
end
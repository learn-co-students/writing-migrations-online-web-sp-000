class CreateStudents < ActiveRecord::Migration[5.1]

  def change
    create_table :Students do |t|
      t.string :name
    end
  end

end

class CreateStudents < ActiveRecord::Migration[5.1]

  def change
    create_table :mystudents do |t|
      t.string :name
    end
  end

end

class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |p|
      p.string :name
    end
  end
end

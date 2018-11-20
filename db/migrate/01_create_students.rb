class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |attr|
      attr.text :name
    end
  end
end

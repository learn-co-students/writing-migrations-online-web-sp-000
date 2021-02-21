class CreateStudents < ActiveRecord::Migration[5.1]
  def change #=> Primary way of writing migrations
    create_table :students do |t|
      t.string :name
    end
  end
end

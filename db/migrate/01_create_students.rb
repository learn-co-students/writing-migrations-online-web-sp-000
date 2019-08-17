class CreateStudents < ActiveRecord::Migration[5.1]
  # def change
  #
  #   # create_table :artists do |t|
  #   #   t.string :name
  #   # end
  #
  # end
  def change
    create_table :students do |t|
      t.string :name
      # t.string :grade
      # t.string :birthdate
    end
  end
end

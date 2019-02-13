class CreateStudents < ActiveRecord::Migration[5.1]
  def change_column
    change_column :table_name, :column_name, :type
  end
end
end


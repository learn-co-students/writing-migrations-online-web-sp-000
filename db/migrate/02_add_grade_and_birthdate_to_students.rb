class AddGradeAndBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :grade, :integer do |t|
    end

    add_column :students, :birthdate, :string do |t|
    end

  end
end

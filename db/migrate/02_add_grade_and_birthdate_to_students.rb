class AddGradeAndBirthdateToStudents
  def change
    add_column : do |t|
      t.integer :grade
      t.string :birthdate
    end
  end
end

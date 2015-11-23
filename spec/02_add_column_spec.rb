require_relative 'spec_helper'
require_relative '../db/migrate/01_create_students'
require_relative '../db/migrate/02_add_grade_and_birthdate_to_students'

describe 'student' do
  before :each do
    sql = "DROP TABLE IF EXISTS students"
    ActiveRecord::Base.connection.execute(sql)
    CreateStudents.new.change
    AddGradeAndBirthdateToStudents.new.change
    Student.reset_column_information
  end

  it 'has a grade' do
    student = Student.create(name: "Steven", grade: 12, birthdate: "April 5th")
    expect(Student.where(grade: 12).first).to eq(student)
  end

  it 'has a string birthdate' do
    student = Student.create(name: "Steven", grade: 12, birthdate: "April 5th")
    expect(Student.where(birthdate: "April 5th").first).to eq(student)
  end
end
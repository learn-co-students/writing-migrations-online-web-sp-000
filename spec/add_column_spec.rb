require_relative 'spec_helper'

describe 'student' do
  before do
    @student = Student.create(name: "Steven", grade: 12, birthdate: "April 5th")
  end

  after do 
    clean_database
  end

  it 'has a name' do
    expect(Student.where(name: "Steven").first).to eq(@student)
  end

  it 'has a grade' do
    expect(Student.where(grade: 12).first).to eq(@student)
  end

  it 'has a string birthdate' do
    expect(Student.where(birthdate: "April 5th").first).to eq(@student)
  end
end
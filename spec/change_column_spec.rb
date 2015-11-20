require_relative 'spec_helper'

describe 'student' do
  before do
    @student = Student.create(name: "Steven", birthdate: DateTime.new(2000,1,1))
  end

  after do 
    clean_database
  end

  it 'has a name' do
    expect(Student.where(birthdate: DateTime.new(2000,1,1)).first).to eq(@student)
  end
end
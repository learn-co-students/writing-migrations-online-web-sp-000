describe 'student' do
  before do
    @student = Student.create(name: "Steven")
  end

  after do 
    clean_database
  end

  it 'has a name' do
    expect(Student.where(name: "Steven").first).to eq(@student)
  end

end
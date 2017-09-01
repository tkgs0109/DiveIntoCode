class School
  def name=(word)
    @greeting = word
  end

  def name
    puts @greeting
  end
end

school = School.new
school.name= "Hello!"
school.name

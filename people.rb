class Person
  attr_accessor :name

  def greeting
    puts "Hi, my name is #{name}"
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

student = Student.new
student.learn
student.name = "Ted"
puts "#{student.name}"
student.greeting

instructor = Instructor.new
instructor.teach
instructor.name = "Suzy"
puts "#{instructor.name}"
instructor.greeting

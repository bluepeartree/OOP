class Person

def initialize(name)
  @name = name
end

def name
  @name
end

def greeting
  "Hi, my name is #{name}"
end

end

class Student < Person

def learn
  puts  "I get it!"
end

end

class Instructor < Person

def teach
  puts "Everything in Ruby is an Object!"
end

end

Nadia = Instructor.new("Nadia")

puts Nadia.greeting

Chris = Student.new("Chris")

puts Chris.greeting

Nadia.teach
Chris.learn
# Chris.teach
# This will create an error. Instructor/Student classes
# are peers so they cannot inherity from each other.
# Since the teach method was defined for the Instructor class
# instances of Student CANNOT call it.

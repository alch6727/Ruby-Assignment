# Part1: Hello World
# Copied from class assignment
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize #set an instance variable and capitalize it
    end
    def sayHi
        puts "Hello #{@name}!" #interprets the value
    end
end
hello = HelloWorldClass.new("Alice")
hello.sayHi
# Problem 8
# Code skeleton from assignment
# Received help online from Paul Wong

class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s       # make sure it's a string
        attr_reader attr_name            # create the attribute's getter
        attr_reader attr_name+"_history" # create bar_history getter

        # %Q is for interpolated string (create a string and interpret ruby values
        # class eval takes a string and evaluates it in the context of the class
        class_eval %Q(
            # Set the value of the variable
        	def #{attr_name}=(attr_name)
        		@#{attr_name} = attr_name

                # Check if the _history array has been intialized
                # If not, initialize it with nil
        		unless @#{attr_name + "_history"}
        			@#{attr_name + "_history"} = []
        			@#{attr_name + "_history"} << nil
        		end

                # Insert the new value into the _history array
        		@#{attr_name + "_history"} << attr_name
        	end
        	)
    end
end

class Foo
    attr_accessor_with_history :bar
end

def testHistory 
    puts "Testing the attribute history with the example in the assignment"
    f = Foo.new
    f.bar = 1
    f.bar = 2
    p f.bar_history # => if your code works, should be [nil, 1, 2]  
    f.bar = 3
    f.bar = 1
    p f.bar_history
end
testHistory



# Problem 6
# This follows actual UNIX glob rules where ? matches any one unknown character
# Help was received online by Alec Hoey

def glob_match (filenames, pattern)
	# Escape the '*', '?', and '.' characters
	pattern.gsub!(/[\*\?\.]/, '*' => '.*', '?' => '.', '.' => '\.') 	
	regex = Regexp.new(pattern)
	#select returns a new array
	filenames.select do |filename|
		filename =~ regex
	end
end

def test
	puts "Tests glob_match through the example given in the assignment"
	p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*")
	# ==> [“part2.rb~”, “.part3.rb.un~”]
end

test
def glob_match (filenames, pattern)
	pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')
	regex = Regexp.new(pattern)
	#select returns a new array
	filenames.select do |filename|
		filename =~ regex
	end
end

p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*")
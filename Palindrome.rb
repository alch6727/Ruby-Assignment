def palindrome?(string)
	sentence = string.downcase.gsub(/\W/,'') # removes any non word character
	sentence == sentence.reverse # checks palindrome by making sure the reverse is the same
end

puts "Test case for palindrome? Answers should be true, false, true, false"
p palindrome?("A man, a plan, a canal -- Panama") # => true
p palindrome?("This shouldn't work.") # => false
p palindrome?("Madam, I'm Adam!") # => true                 
p palindrome?("Abracadabra") # => false
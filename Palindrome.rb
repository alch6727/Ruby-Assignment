def palindrome?(string)
	sentence = string.downcase.gsub(/\W/,'')
	sentence == sentence.reverse
end

p palindrome?("A man, a plan, a canal -- Panama")
p palindrome?("This shouldn't work.")

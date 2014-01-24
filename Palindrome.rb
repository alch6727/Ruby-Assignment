def palindrome?(string)
	sentence = string.downcase.gsub(/\W/,'')
	sentence == sentence.reverse
end

palindrome?("A man, a plan, a canal -- Panama")

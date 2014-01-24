def count_words(string)
	wordCollection = Hash.new(0)
	sentence = string.downcase.gsub(/[^a-z]/,' ')
	sentence.split().each do |word|
		wordCollection[word] += 1
	end
	return wordCollection
end

results = count_words("A man, a plan, a canal -- Panama")
results.each do |key, value|
		puts "#{key}:#{value}"
	end
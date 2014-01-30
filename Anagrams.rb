def combine_anagrams(words)
	words.group_by{|word| word.downcase.chars.sort.join}.values
=begin
	array = Array.new
	tempArray = Array.new
	testArray = Array.new(words)
	testArray.each do |word|
		word = word.chars.sort_by(&:downcase).join
	end
	testArray.each_index.select do |word, index|
		if testArray.include? word
			tempArray.insert(words[index])
		end
		array.insert(tempArray)
		p array
	end
=end
end
p combine_anagrams(["cat", "tac", "mac"])
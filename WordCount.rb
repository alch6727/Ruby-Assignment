#Third Problem
#Counts the number of times words appear in a String
#This treats apostrophes as a separater between words

def count_words(string)
	wordCollection = Hash.new(0) # create a new Hash
	sentence = string.downcase.gsub(/[^a-z]/,' ') # lowercase everything and replace any non letter with a space
	sentence.split().each do |word| # split the sentence by spaces and iterate through each word
		wordCollection[word] += 1 # use the word as the key for the hash and add one to it when it appears
	end
	return wordCollection
end

puts "Test for count_words (taken from assignment):"
puts "First case: A man, a plan, a canal -- Panama"
p count_words("A man, a plan, a canal -- Panama") # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
puts "Second case: The happy cow Jumped over the Happy - moon!"
p count_words("The happy cow Jumped over the Happy - moon!") # => {"the"=>2, "happy"=>2, "cow"=>1, "jumped"=>1, "over"=>1, "moon"=>1}

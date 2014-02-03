#Homework Problem 5
#Received help from StackExchange
def combine_anagrams(words)
	#group_by creates a hash and groups according to what's in {}
	#the word is sorted by chars after converting it to lowercase, it is then joined to create a string
	#the values of the hash are printed out for the array of arrays
	words.group_by{|word| word.downcase.chars.sort.join}.values
end

def test
	puts "Testing anagrams: Second test is from the assignment"
	p combine_anagrams(["cat", "tac", "mac", "Cam"])
	# => [["cat", "tac"], ["mac", "Cam"]]
	p combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
	# => [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]
end

test

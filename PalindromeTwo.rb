#Problem 10

#Open up string class so that it can be a String method
class String
	def palindrome?
		sentence = self.gsub(/\W/,'').downcase
		return sentence == sentence.reverse
	end
end

def testStringPalindrome
	puts "Tests foo.palindrome? (false) and a true palindrome"
	p "foo".palindrome? # => false
	p "A man, a plan, a canal -- Panama".palindrome? # => true
end
testStringPalindrome

# Open Enumerable class
module Enumerable
	def palindrome?
		# Makes sure the enumerable will not error
		sentence = self.to_a
		return sentence == sentence.reverse
	end
end

def testEnumerablePalindrome
	puts "Tests true palindrome and a false palindrome"
	p [1,2,3,2,1].palindrome? # => true
	p [1,2,1,3,5,2,1].palindrome? # => false
end
testEnumerablePalindrome

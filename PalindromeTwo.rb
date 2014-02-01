class String
	def palindrome?
		sentence = self.gsub(/\W/,'').downcase
		return sentence == sentence.reverse
	end
end

p "foo".palindrome?
p "A man, a plan, a canal -- Panama".palindrome?

module Enumerable
	def palindrome?
		sentence = self.to_a
		return sentence == sentence.reverse
	end
end

p [1,2,3,2,1].palindrome?
p [1,2,1,3,5,2,1].palindrome?
# Problem 9
# Code skeleton from assignment with help from class lectures
class Numeric

 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}

 def method_missing(method_id)
   singular_currency = method_id.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     self * @@currencies[singular_currency]
   else
     super
   end
 end

 def in(currency_id)
 	singular_currency = currency_id.to_s.gsub(/s$/,'')
 	if @@currencies.has_key?(singular_currency)
 		self / @@currencies[singular_currency]
 	else
 		super
 	end
 end
end

def testCurrency
	puts "Tests different currency conversions (singular and plural)"
	p 5.dollars.in(:euros)
	p 1.dollar.in(:euros)
	p 10.euros.in(:rupee)
	p 1.yen.in(:dollar)
end

testCurrency



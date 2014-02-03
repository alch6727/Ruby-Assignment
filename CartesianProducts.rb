# Problem 11
# Code skeleton from assignment with help from Stack Exchange

class CartesianProduct

    include Enumerable

    def initialize(a,b)
    	@values = []
    	if !(a.empty? || b.empty?)
            # a.product returns the combination of arrays (cartesian product)
    		@values = a.product(b)
    	end
    end

    #(& = to_proc) block is a proc object (code bound by a set of local variables)   
    def each(&block)
        #takes the block passed to each and ensures it is used when calling each on the product array
    	@values.each(&block)
    end
end

def testProduct
    puts "Test Cartesian Products (Given in assignment)"
    c = CartesianProduct.new([:a,:b], [4,5])
    c.each { |elt| puts elt.inspect }
    # [:a, 4]
    # [:a, 5]
    # [:b, 4]
    # [:b, 5]
    c = CartesianProduct.new([:a,:b], [])
    c.each { |elt| puts elt.inspect }
    # => Nothing printed because CP with an empty collection is empty
end
testProduct
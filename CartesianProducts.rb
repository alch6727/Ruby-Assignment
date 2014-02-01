class CartesianProduct

    include Enumerable

    def initialize(a,b)
    	@values = []
    	if !(a.empty? || b.empty?)
    		@values = a.product(b)
    	end
    end

    def each(&block)
    	@values.each(&block)
    end
end

c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }

c = CartesianProduct.new([:a,:b], [])

c.each { |elt| puts elt.inspect }
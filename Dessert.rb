# Problem 7
# Skeleton from the assignment
class Dessert
    #Creates getters and setters for name and calories
    attr_accessor :name
    attr_accessor :calories

    def initialize(name, calories)
        #Intializes name and calories upon creation
        @name = name
        @calories = calories
    end

    def healthy?
        return @calories < 200
    end

    def delicious?
        return true
    end
end

def testDessert
    puts "Tests the Dessert class"
    puts "Creates a new Dessert, Cream Puff with 100 calories"
    creamPuff = Dessert.new "Cream Puff", 100
    p creamPuff.name
    p creamPuff.calories
    puts "Change calories to 300 and see if it's delicous (true) and healthy (false)"
    creamPuff.calories = 300
    p creamPuff.delicious?
    p creamPuff.healthy?
end

testDessert

class JellyBean < Dessert
    #Creates a getter and setter for flavor
    attr_accessor :flavor

    def initialize(name, calories, flavor)
        @name = name
        @calories = calories
        @flavor = flavor
    end

    def delicious?
        return @flavor != "black licorice"
    end
end

def testJellyBean
    puts "Tests the JellyBean class"
    puts "Create a jelly bean with black licorice flaovr and sees if it's delicious (false)"
    myBean = JellyBean.new "Night", 100, "black licorice"
    p myBean.delicious?
    puts "Changes the name to sunshine and the flavor (to check setters) and sees if it's delicious now (true)"
    myBean.name = "Sunshine"
    myBean.flavor = "strawberry lemonade"
    p myBean.delicious?
end

testJellyBean
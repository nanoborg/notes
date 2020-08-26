====================
        Class
====================

class Car # capital letter
   
    # .new / initialize
    def initialize(argument1, argument2)
   
        # @ instanace variable / available in the whoel class
        @argument1 = argument1
        @argument2 = argument2
    end

    method_for_varaiable1(@argument1)

    # instance method
    def method_for_varaiable1(name)
        name.to_s # what ever function here
    end
end

Car.new("name", "model")


====================
     Class/Self
====================
class Util
    # class method / static method
    def self.round(num)
        "round function"
    end
end

Util.round(6)
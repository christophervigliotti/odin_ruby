module Mammal
    def self.some_out_of_place_method(num)
        num ** 2
    end
end

value = Mammal.some_out_of_place_method(4)
p value
value_b = Mammal::some_out_of_place_method(4)
p value_b
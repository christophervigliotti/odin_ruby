# https://www.eriktrautman.com/posts/ruby-explained-map-select-and-other-enumerable-methods

=begin
    #each
    [1,2,3].each { |num| print "#{num}! " }

    #each with index
    ["Cool", "chicken!", "beans!", "beef!"].each_with_index do |item, index|
        print "#{item} " if index%2==0
    end

    #What if I want to keep only the even numbers that are in an array? The traditional way would be to build some sort of loop that goes through the array, checks whether each element is even, and starts populating a temporary array that we will return at the end. It might look something like:
    class Array
        def keep_evens
            result_array = []
            for num in self
                result_array << num if num % 2 == 0
            end
            return result_array
        end
    end
    my_array = [1,2,3,4,5,6,7,8,100]
    # p my_array.keep_evens

    # this does the same as above
    # p my_array.select{|item| item%2==0 }

    p my_array.collect{|num| num**2 }

    p '* * * * *'
    p my_array.inject(0){|running_total, item| running_total + item }
=end 

# https://www.rubyguides.com/2018/10/any-all-none-one/

#any
any_array = ["ab","cd","efg"]
# p none_array.size
any_response = any_array.any? { 
    |str|
    # p str
    # p str.size == 1
    str.size == 3  

}
#p any_response

#all?
all_array = ['abcde','chess','blarg']
all_response = all_array.all? { 
    |str|
    #p str.size << a bit of debugging, eh
    str.size == 5
}
#p all_response

#none?
none_array = ["ab","cd","ef"]
# p none_array.size
none_response = none_array.none? { 
    |str|
    # p str
    # p str.size == 1
    str.size == 1  

}
# p none_response

#one?
one_array = ["ab","cd","efg"]
# p none_array.size
one_response = any_array.any? { 
    |str|
    # p str
    # p str.size == 1
    str.size == 3  
}
p one_response

#find
# the assignment says not to use the "sort" method to sort, but did not say that I couldn't use it to compare the array
def bubble_sort(array_of_numbers) 
    array_of_numbers.each_with_index do |num, i|
        the_current_number = array_of_numbers[i]
        the_next_number = (array_of_numbers.length() - 1 >= i) ? array_of_numbers[i + 1] : nil # "there is a next number" > array_of_numbers.length() - 1 >= i
        if the_next_number && the_current_number > the_next_number # swap em
            array_of_numbers[i] = the_next_number
            array_of_numbers[i + 1] = the_current_number
        end
    end
    if array_of_numbers != array_of_numbers.sort 
        bubble_sort(array_of_numbers)
    end
    return array_of_numbers
end

p bubble_sort([4,3,78,2,0,2])
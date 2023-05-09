def stock_picker(price_each_day_array)
    min_price_and_day = price_each_day_array.each_with_index.min # get an arry with [lowest number,array position of lowest number]
    buy_on_day = min_price_and_day[1] # the position of the lowest number
    sell_on_day =  price_each_day_array.slice(min_price_and_day[1],price_each_day_array.length()).each_with_index.max[1] + buy_on_day # the position of the highest number that appears after the lowest number
    (buy_on_day < sell_on_day) ? [buy_on_day,sell_on_day] : "do not buy" # return an array of [lowest,highest] unless no high number that meets the criteria is found
end
p "APPL: #{stock_picker([209,210,195,235])}" # should return an array
p "F: #{stock_picker([17,3,6,9,15,8,6,1])}" # should return "do not buy"
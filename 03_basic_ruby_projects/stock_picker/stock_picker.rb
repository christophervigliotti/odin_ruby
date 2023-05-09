def stock_picker(price_each_day_array)
    return_var = 'do not buy'
    min_price_and_day = price_each_day_array.each_with_index.min
    buy_on_day = min_price_and_day[1]
    sell_on_day =  price_each_day_array.slice(min_price_and_day[1],price_each_day_array.length()).each_with_index.max[1] + buy_on_day
    (buy_on_day < sell_on_day) ? [buy_on_day,sell_on_day] : return_var
end
p "APPL: #{stock_picker([209,210,195,235])}"
p "F: #{stock_picker([17,3,6,9,15,8,6,1])}"
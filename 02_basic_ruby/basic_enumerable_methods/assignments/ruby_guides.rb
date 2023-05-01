# https://www.rubyguides.com/2018/10/ruby-map-method/

=begin

    hash = { bacon: "protein", apple: "fruit" }
    p hash
    p hash.map { |k,v| [k, v.to_sym] }.to_h
    p hash.map { |k,v| [k, v.to_sym] }

    array = [1,2,3]
    p array.each { |n| n * 2 }
    p array.map { |n| n * 2 }

    array = %w(a b c)
    p array.map.with_index { |ch, idx| [ch, idx] }


=end


# Ruby Map Shorthand (map &)
blah = [1,2,3]
p ["11", "21", "5"].map(&:to_i)
p ["orange", "apple", "banana",3,blah].map(&:class)
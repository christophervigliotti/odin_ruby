def substring_counter(word,substrings_array)
    substring_counts = {}
    substrings_array.each_with_index do | substring,index |
        substring_count = word.scan(/(?=#{substring})/).count
        substring_counts[substring] = substring_count
    end
    substring_counts
end
p substring_counter('bonnaroo-kazoo',['bon','ok','oo'])
my_hash = {
    "browns" => "cleveland",
    "hash" => "browns",
    "an array" => ["hash","browns"],
    "an empty hash in a hash" => {}
}
puts my_hash
my_other_hash = Hash.new
puts my_other_hash
hash_hash = {9 => "nine", :six=> 6}
puts hash_hash

# accessing values
puts my_hash["browns"]
puts my_hash["this key doesn't exist"]
# puts my_hash.fetch("this key doesn't exist")
puts my_hash.fetch("this key doesn't exist","not found so here is a default value")

# adding and changing values
my_hash["gas"] = "propane"
puts my_hash
my_hash["gas"] = "99 stinky"
puts my_hash

# removing data
my_hash.delete("gas")
puts my_hash

# methods
puts my_hash.keys
puts my_hash.values
puts my_hash.merge(hash_hash)

# symbols as hash keys

american = {
    :george => "Washington",
    :ben => "Franklin"
}

martian = {
    beeblebrox: "pew pew",
    clorox: "bloop!"
}

puts martian[:beeblebrox]
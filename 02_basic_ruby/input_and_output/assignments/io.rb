# https://www.tutorialspoint.com/ruby/ruby_input_output.htm

name = "Chris"
putc name # only puts one character
puts ""

# File.new
aFile = File.new("ignored_file.txt", "w+")
if aFile
    aFile.syswrite("This is a file with stuff in it. ")
    aFile.syswrite("This is more stuff. ")
    aFile.each_byte {|ch| putc ch; putc ?. }
    puts "writing to file"
else
    puts "unable to write to file"
end
   # ... process the file
aFile.close

# File.open("ignored_file.txt", "w+") do |aFile|
    # process the file
# end
p 'press [ctrl] + C to end this nightmare hahaha!'
=begin
    while 1
        puts "Enter a number>>"
        num = Kernel.gets.match(/\d+/)[0]
        puts "#{num} + 1 is: #{num.to_i+1}"
    end
=end
while 1
    puts "Enter a number>>"
    begin
      num = Kernel.gets.match(/\d+/)[0]
    rescue
      puts "Erroneous input! Try again..."
    else  
      puts "#{num} + 1 is: #{num.to_i+1}"
    end  
 end
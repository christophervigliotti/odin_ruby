require 'open-uri'
remote_base_url = "https://en.wikipedia.org/wiki"

[1900, 1910, 'xj3490', 2000].each do |yr|
 
    retries = 3
    
    begin
        url = "#{remote_base_url}/#{yr}"
        puts "Getting page #{url}"
        # deprecated under Ruby 2.7, removed in Ruby 3.0 rpage = open(url)
        rpage = URI.open(url).read
    rescue StandardError=>e
        puts "\tError: #{e}"
        #if !e.message.to_s.include? "Can't get"
            if retries > 0
                #puts "\tTrying #{retries} more times"
                puts 'e.class: ' + e.class.to_s
                puts 'e.message: ' + e.message.to_s
                retries -= 1
                #sleep 1
                retry
            else
                puts "\t\tCan't get #{yr}, so moving on"
            end    
        #end
    else
        puts "\tGot page for #{yr}"
    ensure   
        #puts "Ensure branch; sleeping"
        #sleep 1
    end
end
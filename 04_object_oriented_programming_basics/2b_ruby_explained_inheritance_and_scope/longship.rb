def launch_longships(longships)
    # Here we can't yet use `longship`, `longships_count` or `longship_name`.  We CAN use `longships` because it was passed in above this point.
    launched_ships = 0
    # Now launched_ships is in scope so we can use it
    longships.each do |longship|
        # Now `longship` is in scope, so we can use it
        longship_name = "#{longship.owner.name}'s Reaver"
        # Now `longship_name` is in scope so we can use it
        longship.launch
        launched_ships += 1
        puts "#{longship_name} successfully launched!"
    end
    # Now we've exited the loop so `longship` and `longship_name` are no longer in scope so we cannot use them.
    puts "Excellent news! We've launched #{launched_ships} ships!"
end
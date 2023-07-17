$available_rooms = []
require_relative('./Rooms.rb')

def display_rooms
    choices = []
    puts "Press 1 if you want Ac , Press 0 if you dont want AC"
     choice = gets.to_i
     choices << choice
    puts "Press 1 if you want DoubleBed , Press 0 if you dont want SingleBed"
     choice = gets.to_i
     choices << choice
    puts "Press 1 if you want Balcony , Press 0 if you dont want Balcony"
     choice = gets.to_i
     choices << choice
     $available_rooms = []
     $rooms.each do |i|
       if i.instance_variable_get(:@ac) == choices[0] && i.instance_variable_get(:@BedType)== choices[1] && i.instance_variable_get(:@Balcony) == choices[2] && i.instance_variable_get(:@occupied) == 0
         puts "RoomNo=>#{i.instance_variable_get(:@name)} , cost = #{i.instance_variable_get(:@cost)}"
         $available_rooms << i
       end
     end
     if $available_rooms.empty?
       puts "no rooms available"
       display_rooms
     else
      selecting_room
     end
end

def selecting_room
  puts "enter roomNumber you want to select"
  puts "enter zero to go to main menu"
  input_user = gets.to_i
  if input_user == 0
    display_rooms
  end
  f = 0
  $available_rooms.each do |i|
    if i.instance_variable_get(:@name) == input_user
       i.instance_variable_set(:@occupied, 1)
       f = 1
       cost = i.instance_variable_get(:@cost)
       return i
    end
  end
  if f == 0
    puts "wrong input delivered"
    selecting_room
  end

end



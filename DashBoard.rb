$availableRooms = []
class DB
   def UserDashBoard
    while true
      puts "press 1 for checkout"
      puts "press 2 for checkin"
      input = gets.to_i
       if input == 1
          puts "welcome to checkout"
          #take user phone number to search if it has booking
          # if user doesnot have booking than below line will run:
          #self.UserDashBoard       just uncomment it later.
          #if user does have booking impelement the checkout function.
          #checkout function will come here , make sure to make occupied to zero when checking out. and uncomment the below line.
          #self.UserDashBoard
       elsif input == 2
        puts "welcome to checkin"
        displayRooms
        break
       else
         puts "wrong option enter again"

       end
    end

   end
end

def displayRooms
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
     $availableRooms = []
     $rooms.each do |i|
       if i.instance_variable_get(:@ac) == choices[0] && i.instance_variable_get(:@BedType)== choices[1] && i.instance_variable_get(:@Balcony) == choices[2] && i.instance_variable_get(:@occupied) == 0
         puts "RoomNo=>#{i.instance_variable_get(:@name)} , cost = #{i.instance_variable_get(:@cost)}"
         $availableRooms << i
       end
     end
     if $availableRooms.empty?()
       puts "no rooms available"
       o = DB.new()
       o.UserDashBoard
     else
      selectingRoom
     end
end
def selectingRoom
  puts "enter roomNumber you want to select"
  puts "enter zero to go to main menu"
  inputUser = gets.to_i
  if inputUser == 0
    o = DB.new()
    o.UserDashBoard
  end
  f = 0
  $availableRooms.each do |i|
    if i.instance_variable_get(:@name) == inputUser
       i.instance_variable_set(:@occupied, 1)
       f = 1
       cost = i.instance_variable_get(:@cost) #perday cost
       #payment and checkin functions will come here and user details will also be asked here.
       #take startdate and enddate also when crearting booking whike checkin
       puts "thanks for booking"
       o = DB.new()
       o.UserDashBoard
    end
  end
  if f == 0
    puts "wrong input delivered"
    selectingRoom
  end

end








require "csv"

$residents = {}
require "./User.rb"
CSV.open("./residents.txt", "r",{:col_sep => '\t'}).each do |row|
    user,room = row[0].split.map(&:to_i)
    $residents[user] = $allRooms[room]
    $allRooms[room].occupied = 1
end

class Hotel
def hotelBooking
    puts "Enter Phone Number : "
    phone = gets.chomp().to_i
    user = User.new(phone)

    if $residents.include?phone
        puts "Would you like to Check Out ? Y/N"
        while true
            op = gets.chomp()
            if op=='Y' or op=='y'
    # ? pass by reference availablRooms, bookedRooms, residents
                user.checkOut()
                break
            elsif op=='N' or op=='n'
                break
            else
                puts "Invalid character . choose 'Y' or 'N'"
            end
        end
    else
        puts "Would you like to Check In ? Y/N"
        while true
            op = gets.chomp()
            if op=='Y' or op=='y'
    # ? pass by reference availableRooms, bookedRooms, residents
                user.checkIn()
                break
            elsif op=='N' or op=='n'
                break
            else
                puts "Invalid character . choose 'Y' or 'N'"
            end
        end
    end
end
end


hotel = Hotel.new()
hotel.hotelBooking()




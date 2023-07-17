
require_relative ("./Booking.rb")

class User

    def initialize(phone)
        @name = ""
        @phone = phone
        @address = ""
    end

    def check_in

        puts "Enter your name "
        @name = gets.chomp()
        puts "Enter address"
        @address = gets.chomp()

        booking = Booking.new()
        room = booking.create_booking(@phone)

        File.open("./users.csv","a") do |file|
          file.write("#@phone\t#@name\t#@address\n")
        end

        File.open("./residents.csv","a") do |file|
          file.write("#{@phone}   #{room.name}\n")
        end
        $residents[@phone] = room

    end

    def check_out
        $residents[@phone].occupied = 0
        $residents.delete(@phone)
        # need optimization
        File.open("./residents.csv","a") do |file|
            $residents.each do |phone,room|
                file.write("#{phone}\t#{room.name}\n")
            end
        end
    end


end






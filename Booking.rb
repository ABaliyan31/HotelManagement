require_relative ("./Dashboard.rb")
require 'date'
require 'csv'
#require 'file'


 # start of booking class

 class  Booking

    @@headers = ["Phone_Number", "Start_Date", "End_Date", "Gym_Opted", "Laundry_opted", "food_opted", "Amount"]
    def createBooking(phone_No)

        details = []
        details << phone_No
        room = displayRooms
        amount = room.cost
      while true

        while true
         puts "Enter Start Date"
         startDate = gets.chomp

         y, m, d = startDate.split '-'
         if Date.valid_date? y.to_i, m.to_i, d.to_i
            break
         else
            puts "Enter Correct Start Date"
         end
        end

        while true
         puts "Enter End Date"
         endDate = gets.chomp

         y, m, d = endDate.split '-'
         if Date.valid_date? y.to_i, m.to_i, d.to_i
            break
         else
            puts "Enter Correct End Date"
         end
        end

        if Date.parse(startDate) > Date.parse(endDate)
            puts "Please enter correct Dates"
        else
            difference_in_days = (Date.parse(endDate) - Date.parse(startDate)).to_i
            amount = difference_in_days*amount
            details << startDate
            details << endDate
            break
        end
    end

        # Asking for Gym Charges

        gym_opted = "No"
        while true
        puts "Gym Required ? (Y/N)"
        input = gets.chomp
        if input == 'Y' || input == 'y'
            amount = amount + 1000
            gym_opted = "Yes"
            break
        elsif input == 'N' || input == 'n'
            breaks
        else puts "choose correct options !!"
        end
        end

        # Asking for Laundry Charges

        laundry_opted = "No"
        while true
        puts "Laundry Required ? (Y/N)"
        input = gets.chomp
        if input == 'Y' || input == 'y'
            amount = amount + 1000
            laundry_opted = "Yes"
            break
        elsif input == 'N'|| input == 'n'
            break
        else puts "choose correct options !!"
        end
        end

        # Asking for Food Charges

        food_opted = "No"
        while true
        puts "Food Required ? (Y/N)"
        input = gets.chomp
        if input == 'Y' || input == 'y'
            amount = amount + 1500
            food_opted = "Yes"
            break
        elsif input == 'N' || input == 'n'
            break
        else puts "choose correct options !!"
        end
        end

        puts "Total cost : #{amount}"
        puts "Thanks for the Booking, wish you a Happy Stay"
        details << gym_opted
        details << laundry_opted
        details << food_opted
        details << amount

        CSV.open("Booking_data.csv", "a") do |csv|
           if File.zero?("Booking_data.csv")
            csv << @@headers
           end
            csv << details
        end
        # we have to save payment and booking data
        return room
    end

end





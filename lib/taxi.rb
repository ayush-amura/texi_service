require 'passenger'
require 'guide'
class Taxi
	attr_accessor :driver_name,:vehicle_type,:rate,:vehicle_number,:driver_contact
	
  def initialize vehicle_type,vehicle_number,driver_name,driver_contact,rate,km
      @vehicle_type = vehicle_type
      @vehicle_number = vehicle_number
      @driver_name = driver_name
      @driver_contact = driver_contact
      @pas_km=km.to_i
      @rate = rate.to_i
      
      puts "Your vehicle type is #{vehicle_type} and Approximate fare will be counted to  #{@rate * @pas_km}INR"
  end
	
  def confirmation
    puts "Type (YES) to confirm your ride"
    val=gets.chomp
    if val == "yes"
      puts "Your Ride is confirmed."
      puts "============================================================="
      puts "Your vehicle number is > #{vehicle_number}.\nYour Driver's name is > #{driver_name}.\nDriver's contact number > #{@driver_contact}"
      puts "============================================================="
    else
      guide1=Guide.new
      guide1.launch
    end
  end

  # def self.get_km(km)
  #   =km
  # end

	def self.cab_select(choice,km)
  			
    case choice
		when "1"
      taxi = Taxi.new("sedan","MH 1234","sedansh","1234567890","16",km)
      taxi.confirmation

					
		when "2"
      taxi = Taxi.new("hatchback","MH 2234","hatchy","9934567890","14",km)
      taxi.confirmation

		when "3"
			taxi = Taxi.new("micro","MH 5534","micresh","9923256789","12",km)
      taxi.confirmation
	end


end

end


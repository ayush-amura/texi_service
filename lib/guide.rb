#GUIDE CLASS || 	Body of the project

require 'passenger'

$prompt = '> '
class Guide
	

	def launch
		introduction  #welcome msg
	
		cust_detail		#Customer Details Parsing
		
		taxi_detail  #Taxi Detail Parsing

		conclusion		
	end

	def introduction
		puts"==================================="
		puts "-----------Book-My-Cab------------"
		puts"==================================="
		puts "An Intractive guide for you to book your Ride >>"
		puts " "
	end

	def cust_detail #comunicating with passenger class
		puts "Enter your Personal Details :"
		print "Enter Your Name #{$prompt}"
		pas_name=gets.chomp
		# until pas_name.match(/^[A-z]+$/)
		#     puts "Name should contain only alphabets,Reenter"
		# 		pas_name=gets.chomp
		# 	end

		
		print "Enter Your Contact Number"
		print $prompt.chomp
		pas_number=gets.chomp
		# until pas_number.match(/[0-9]+/)[0].length==10
		# 	puts "Invalid input for contact number"
		# 	pas_number=gets.chomp
		# end

		print "Kilometers to travel"
		print $prompt.chomp 
		$pas_km=gets.chomp()
		# until pas_km.match(/[0-9]+/)
		# 	puts "Invalid input for Kilometers"
		# 	pas_number=gets.chomp
		# end		
		# puts "-------------------------------------"

		passenger1 = Passenger.new(pas_name,pas_number,$pas_km)
		# passenger1.define(pas_name,pas_number,pas_km)
  end

	 def taxi_detail 
	 	puts "Findin your Ride ..."
	 	#sleep(3)
	 	puts ""
		puts "Pick your ride"
		puts ""
	 	puts "1.Sedan 16/km"
	 	puts "2.Hatchback 14/km"  
	 	puts "3.Micro 12/km"
	 	puts $prompt.chomp

	 	taxi_choice = gets.chomp
	  
    puts"\n" 

    # Taxi.get_km(pas_km)

    Taxi.cab_select(taxi_choice,$pas_km)
    
   end
	 
   def conclusion
		puts"ThankYou!,Have a Safe Ride"
	end

end
 require 'taxi'
 class Passenger 
	attr_accessor :pas_km,:pas_name,:pas_number
	 
	 def initialize name, number, km
	 	pas_name = name
	 	pas_number = number
	 	pas_km = km
	 	puts "hello #{pas_name.upcase},Your Contact Number is :#{pas_number} and traveling #{pas_km} kms "
	 end
end
#name
#_contact_number

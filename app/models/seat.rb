class Seat < ActiveRecord::Base
belongs_to :flight
	def validate
		if baggage > flight.baggage_allowance
			errors.add_to_base ("You have to much baggage")
		end
		
		if flight.seats.size >= flight.capacity
			errors.add_to_base ("flight full")
		end
	end
end

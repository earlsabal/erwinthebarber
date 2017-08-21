class Address < ApplicationRecord

	def number_street
		"#{self.number} #{self.street}"
	end

	def city_state
		"#{self.city}, #{self.state}"
	end

end

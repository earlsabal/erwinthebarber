module ApplicationHelper

	def find_phone
		Information.find_phone
	end

	def find_email
		Information.find_email
	end

	def find_address
		Address.first
	end

end

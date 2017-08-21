module ApplicationHelper

	def find_phone
		Information.find_by(name: "phone").body
	end

	def find_email
		Information.find_by(name: "email").body
	end

	def find_address
		Address.first
	end

end

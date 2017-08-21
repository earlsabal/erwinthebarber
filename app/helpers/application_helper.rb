module ApplicationHelper

	def phone_info
		Information.find_by(name: "phone")
	end

	def find_phone
		Information.find_by(name: "phone").body
	end

	def email_info
		Information.find_by(name: "email")
	end

	def find_email
		Information.find_by(name: "email").body
	end

	def find_address
		Address.first
	end

end

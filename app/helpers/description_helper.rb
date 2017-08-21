module DescriptionHelper
	
	def about_desc
		Description.find_by(name: "about")
	end

	def contact_desc
		Description.find_by(name: "contact")
	end

	def haircuts_desc
		Description.find_by(name: "haircuts")
	end

	def header_desc
		Description.find_by(name: "header")
	end

	def instagram_desc
		Description.find_by(name: "instagram")
	end

	def portfolio_desc
		Description.find_by(name: "portfolio")
	end

	def services_desc
		Description.find_by(name: "services")
	end

end

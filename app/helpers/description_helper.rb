module DescriptionHelper
	
	def about_desc
		Description.find(name: "about")
	end

	def contact_desc
		Description.find(name: "contact")
	end

	def haircuts_desc
		Description.find(name: "haircuts")
	end

	def header_desc
		Description.find(name: "header")
	end

	def instagram_desc
		Description.find(name: "instagram")
	end

	def portfolio_desc
		Description.find(name: "portfolio")
	end

	def services_desc
		Description.find(name: "services")
	end

end

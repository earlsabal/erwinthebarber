module ButtonHelper
	
	def about_btn
		Button.find_by(name: "about")
	end

	def haircut_btn
		Button.find_by(name: "haircut")
	end

	def header_btn
		Button.find_by(name: "header")
	end

	def instagram_btn
		Button.find_by(name: "instagram")
	end

end

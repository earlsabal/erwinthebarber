class Haircut < ApplicationRecord
	has_many :pics

	validates_presence_of :name
end

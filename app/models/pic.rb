class Pic < ApplicationRecord
	belongs_to :haircut

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end

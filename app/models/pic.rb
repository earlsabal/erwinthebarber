class Pic < ApplicationRecord
	belongs_to :haircut

	validates_presence_of :url, :title, :body, :haircut_id
end

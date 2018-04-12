class Project < ApplicationRecord

	belongs_to :profile
	has_many :promise
	has_many :video
	has_many :image
	has_many :favorite
	has_many :fund

end

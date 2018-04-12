class Profile < ApplicationRecord


	belongs_to :user
	has_many :email
	has_many :phone
	has_many :web
	has_many :fund

end

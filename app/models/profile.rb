class Profile < ApplicationRecord


	belongs_to :user
	has_many :email
	has_many :phone
	has_many :web
	has_many :fund

	validates :description, length: {maximum: 500}
	validates :last_session, presence: true

	

end

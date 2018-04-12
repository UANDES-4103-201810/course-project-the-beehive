class User < ApplicationRecord

	has_many :purchase
	has_many :favorite

	validates :mail, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
	validates :password, presence: true
	validates :privilage, presence: true
	
end

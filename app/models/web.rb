class Web < ApplicationRecord

	belongs_to :profile
	validates :web,presence: true
end

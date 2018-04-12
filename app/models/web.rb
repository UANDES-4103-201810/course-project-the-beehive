class Web < ApplicationRecord

	belongs_to :profile
	validates :webpage,presence: true
end

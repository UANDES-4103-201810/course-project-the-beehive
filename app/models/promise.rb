class Promise < ApplicationRecord

	belongs_to :project
	has_many :purchase

	validates :description, length: {maximum: 300}, presence: true
	validates :min_sum, :estimated_arrival, :cfunders, presence: true
	
end

class Project < ApplicationRecord

	belongs_to :profile
	has_many :promise
	has_many :video
	has_many :image
	has_many :favorite
	has_many :fund

	validates :name, presence: true
	validates :description, length: {maximum: 1000}
	validates :goal, presence: true
	validates :actual_amount, presence: true
	validates :date_limit, presence: true
	validates :cfunders, presence:true

end

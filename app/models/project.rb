# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 300, minimum: 10 }
  validates :user_id, :goal,:date_limit, presence: true
  validates :user, :goal, presence: true

	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end

end

class Phone < ApplicationRecord


	belongs_to :profile

	validates :phone, length: {is: 9}

end

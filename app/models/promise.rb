class Promise < ApplicationRecord

	belongs_to :project
	has_many :purchase

end

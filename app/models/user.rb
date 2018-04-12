class User < ApplicationRecord

	has_many :purchase
	has_many :favorite

end

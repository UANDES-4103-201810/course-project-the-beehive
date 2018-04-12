class Mail < ApplicationRecord
  belongs_to :profile

	validates :mail, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}

end

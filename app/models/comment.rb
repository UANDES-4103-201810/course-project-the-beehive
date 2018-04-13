class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project

	validates :content, length: {maximum: 400}

end

class Promise < ApplicationRecord
  belongs_to :project

  validates :project, :min, presence: true
  validates :description, presence: true, length: {maximum: 300}
end

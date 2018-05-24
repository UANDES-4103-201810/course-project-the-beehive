# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  validates_associated :user

  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 300, minimum: 10 }
  validates :user, :goal, presence: true
end

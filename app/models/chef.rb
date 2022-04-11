class Chef < ApplicationRecord
  belongs_to :user
  has_many :courses

  validates :genre, presence: true
  validates :genre, inclusion: { in: ["female", "male"] }
end

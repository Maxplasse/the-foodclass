class Chef < ApplicationRecord
  belongs_to :user
  has_many :courses

  validates :restaurants_names, :genre, :title, :subtitle, presence: true
  validates :genre, inclusion: { in: ["female", "male"] }
end

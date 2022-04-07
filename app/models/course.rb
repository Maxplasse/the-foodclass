class Course < ApplicationRecord
  belongs_to :chef
  has_many :participations
  has_many :posts

  validates :title, :difficulty, :duration, :category, :starts_at, :ends_at, presence: true
  CATEGORIES = ["Français", "Asiatique", "Italien", "Japonais", "Oriental", "Chinois"]
  validates :category, inclusion: { in: CATEGORIES }

  has_one_attached :photo
end

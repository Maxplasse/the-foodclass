class Course < ApplicationRecord
  belongs_to :chef
  has_one :user, through: :chef
  has_many :participations
  has_many :posts

  validates :title, :difficulty, :duration, :category, :starts_at, :ends_at, presence: true
  CATEGORIES = ["Français", "Asiatique", "Italien", "Japonais", "Oriental", "Chinois"]
  validates :category, inclusion: { in: CATEGORIES }

  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :global_search,
    against: [:title, :difficulty, :duration, :category, :starts_at],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
    # ignoring: :accents
end

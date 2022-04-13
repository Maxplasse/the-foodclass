class Post < ApplicationRecord
  belongs_to :course
  belongs_to :participation
  has_many :emojis
  has_many :comments

  validates :content, presence: true
  has_one_attached :photo
end

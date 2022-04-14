class Post < ApplicationRecord
  belongs_to :course
  belongs_to :participation
  has_many :emojis, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :content, presence: true
  has_one_attached :photo

  def emojis_counters
    emojis.group(:content).count
  end
end

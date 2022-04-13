class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :chef
  has_many :courses, through: :chef
  has_many :participations, dependent: :destroy
  has_many :emojis, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :courses_as_participant, through: :participations, source: :course

  has_one_attached :photo
end

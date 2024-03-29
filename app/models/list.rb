class List < ApplicationRecord
  has_many :bookmarks
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  has_one_attached :photo
end

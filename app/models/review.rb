class Review < ApplicationRecord
  belongs_to :list
  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, presence: true
end

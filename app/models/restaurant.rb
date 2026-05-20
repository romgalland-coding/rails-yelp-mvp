class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = [ "chinese", "italian", "japanese", "french", "belgian" ]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORY }

  def average_rating
    return 0 if reviews.empty?
    reviews.average(:rating).round(1)
  end
end

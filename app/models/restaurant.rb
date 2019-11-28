class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # reviews depend on restaurant, when restaurant in destroys so are the reviews
  validates :name, presence: true
  # validates :phone_number, presence: true
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian', 'indian']
  validates :category, inclusion: { in: CATEGORY }
  validates :address, presence: true

  # # retrieve all the reviews of a restaurant
  # def reviews
  #   Review.where(restaurant_id: self.id)
  # end
end

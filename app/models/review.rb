class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }, presence: true, numericality: { only_integer: true }
  validates :content, presence: true

  # # @review.restaurant = @restaurant
  # def restaurant=(restaurant)
  #   @review.update(restaurant_id: restaurant.id)
  # end
  # # review.restaurant
  # def restaurant
  #   Restaurant.find(self.restaurant_id)
  # end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian', 'indian'].sample
  )
  restaurant.save!

  3.times do
    review = Review.new(
      restaurant_id: restaurant.id,
      rating: Faker::Number.between(from: 1, to: 5),
      content: Faker::Restaurant.review
    )
    review.save!
  end
end


# Destroy the db
  # run File.destoy_all
# Create my seeds
  #  make examples of file with params
# Output to show if created
  #


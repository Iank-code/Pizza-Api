# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Pizza.delete_all
# Restaurant.delete_all


50.times do
    name = Faker::Food.dish
    ingredients = Faker::Food.ingredient

    pizza = Pizza.create(name: name, ingredients: ingredients)
end

15.times do
    name = Faker::Restaurant.name
    address = Faker::Restaurant.description 

    restaurant = Restaurant.create(name: name, address: address)
end

# 50.times do
#     RestaurantPizza.create(
#         price: Faker::Commerce.price,
#         pizza_id: Pizza.all.sample.id,
#         restaurant_id: Restaurant.all.sample.id,
#     )
# end
50.times do
    pizza = Pizza.all.sample
    restaurant = Restaurant.all.sample
    RestaurantPizza.create(
        price: Faker::Commerce.price,
        pizza_id: pizza.id,
        restaurant_id: restaurant.id,
        pizza: pizza,
        restaurant: restaurant
    )
end
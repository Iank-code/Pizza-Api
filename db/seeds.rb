# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Pizza.delete_all
Restaurant.delete_all


20.times do
    name = Faker::Food.dish
    ingredients = Faker::Food.ingredient

    pizza = Pizza.create(name: name, ingredients: ingredients)
end

10.times do
    name = Faker::Restaurant.name
    address = Faker::Restaurant.description 

    restaurant = Restaurant.create(name: name, address: address)
end
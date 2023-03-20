class AddForeignToRestaurantPizza < ActiveRecord::Migration[6.1]
  def change
    add_reference :restaurant_pizzas, :pizza, null: false, foreign_key: true
    add_reference :restaurant_pizzas, :restaurant, null: false, foreign_key: true
  end
end

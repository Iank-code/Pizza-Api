class RestaurantPizza < ApplicationRecord
    belongs_to :pizza
    belongs_to :restaurant

    validates :price, numericality: { in: 1..30 }
end

class RestaurantPizzasController < ApplicationController
    # rescue_from ActiveRecord::Record
    def index
        render json: RestaurantPizza.all
    end

    def show
        result = RestaurantPizza.find(params[:id])
        render json: result
    end

    # def create
    #     random_restaurant = Restaurant.all.sample
    #     random_pizza = Pizza.all.sample

    #     new_restaurant_pizza = RestaurantPizza.create(
    #         price: params[:price],
    #         pizza_id: random_pizza.id,
    #         restaurant_id: random_pizza.id
    #     )

    #     if new_restaurant_pizza.valid?
    #         render json: new_restaurant_pizza, status: :created
    #     else
    #         render json: { error: new_restaurant_pizza.errors }, status: :unprocessable_entity
    #     end
    # end
    def create
        # random_restaurant = Restaurant.all.sample
        # random_pizza = Pizza.all.sample

        new_restaurant_pizza = RestaurantPizza.create!(
            price: params[:price],
            pizza_id: params[:pizza_id],
            restaurant_id: params[:restaurant_id]
        )
        # new_restaurant_pizza = RestaurantPizza.create(create_params)

        if new_restaurant_pizza.valid?
            render json: new_restaurant_pizza.pizza, status: :created
        else
            render json: { errors: new_restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
        end
    end



    private

    def create_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
    
    def validation_error
        render json: {errors: "Validation Not successfull"}
    end
end

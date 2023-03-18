class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index
        render json: Restaurant.all
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, include: ['pizzas']
    end


    private

    def restaurant_params
        params.permit(:id)
    end

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end

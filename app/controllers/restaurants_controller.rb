class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index
        render json: Restaurant.all
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, include: ['pizzas']
    end

    def destroy
        item = Restaurant.find(restaurant_params)
        if item
            item.destroy
            head :no_content
        else
            render json: {errors: "Restaurant not found"}, status: :not_found
        end

    end

    private

    def restaurant_params
        params.permit(:id)[:id]
    end


    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end

class RestaurantPizzasController < ApplicationController
    def index
        render json: RestaurantPizza.all
    end

    def show
        result = RestaurantPizza.find(params[:id])
        render json: result
    end

    private
    
    def validation_error
        render json: {errors: "Validation Not successfull"}
    end
end

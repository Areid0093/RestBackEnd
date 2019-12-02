class RestaurantsController < ApplicationController

    def create 
        new_restaurant = Restaurant.create(restaurant_params)
        render json: new_restaurant
    end

    







    private
    
    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :photo, :rating)
    end


end

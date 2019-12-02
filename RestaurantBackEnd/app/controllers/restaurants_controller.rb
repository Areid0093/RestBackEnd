class RestaurantsController < ApplicationController

    def create 
        Restaurant.create(restaurant_params)
    end







    private
    
    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :photo, :rating)
    end


end

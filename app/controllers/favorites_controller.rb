class FavoritesController < ApplicationController

    def index
        favorites = Favorite.all
        render json: favorites.to_json(favorites_serializer)
    end

    def show
        render json: Favorite.find(params['id']).to_json(favorites_serializer)
    end

    def create
        new_favorite = Favorite.create(favorites_params)
        render json: new_favorite
    end

    def destroy
        render json: Favorite.find(params['id']).destroy
    end

    def update
        favorite = Favorite.find(params['id']).update(favorites_params)
        render json: favorite
    end

   



    private

    def favorites_params
        params.require(:favorites).permit(:user, :restaurant)
    end

    def favorites_serializer

    end 

end





 

  
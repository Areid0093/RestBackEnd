class ReviewsController < ApplicationController


    def index
        reviews = Review.all
        render json: reviews.to_json(reviews_serializer)
    end

    def show
        render json: Review.find(params['id']).to_json(reviews_serializer)
    end 

    def create
        new_review = Review.create(reviews_params)
        render json: new_review
    end

    def destroy
        render json: Review.find(params['id']).to_json(reviews_serializer)
    end

    def update
        review = Review.find(params['id']).update(reviews_params)
        render json: reviews
    end


    private

    def reviews_params
        params.require(:reviews).permit(:comment, :user, :restaurant)
    end

    def reviews_serializer

    end
end

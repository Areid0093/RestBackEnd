class ReviewsController < ApplicationController
    skip_before_action :authorized

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
        render json: review
    end


    private

    def reviews_params
        params.require(:review).permit(:comment, :user_id, :restaurant_id)
    end

    def reviews_serializer

    end
end

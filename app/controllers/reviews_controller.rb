class ReviewsController < ApplicationController
    before_action :find_review, only [:edit, :update, :destroy]


    def new
        @reviews = review.create
    end

    def create
        @review = review.create(review_params)
        if @review.valid?
            redirect_to review_path(@review)
        else
            flash[:review_errors] = @review.errors.full_messages
            redirect_to business_path(@review.business) 
        end
    end
    
    def edit 
        #@review = Review.find(params[:id])

    end

    def update 
        #@review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to business_path(@review.business)
    end

    def destroy
       # @review = Review.find(params[:id])
        @review.destroy
        redirect_to business_path(@review.business)
    end

    private 

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:description, :covid_index, :business_id, :user_id)
    end
end

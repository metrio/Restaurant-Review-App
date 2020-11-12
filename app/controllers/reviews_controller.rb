class ReviewsController < ApplicationController
    before_action :find_review, only: [:edit, :update, :destroy]

    
    def new
        @review = Review.create
    end


    def create
        @review = Review.create(review_params)
        if @review.valid?
            redirect_to business_path(@review.business)
        else
            flash[:review_errors] = @review.errors.full_messages
            redirect_to new_review_path(@review) 
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
    end

    def destroy
       # @review = Review.find(params[:id])
        @review.destroy
        redirect_to user_path(@review.user)
    end

    private 

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
       params.require(:review).permit(:description, :covid_index, :business_id, :user_id)
    end

end

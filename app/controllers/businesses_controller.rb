class BusinessesController < ApplicationController
    skip_before_action :authorization

    def index
        @businesses = Business.all 
    end

    def show
        @business = Business.find(params[:id])
    end


end

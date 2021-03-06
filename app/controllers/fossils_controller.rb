class FossilsController < ApplicationController

    skip_before_action :authorized
    
    def index
        @fossils = Fossil.all
        render json: @fossils
    end

    def show
        @fossil = Fossil.find(params[:id])
        render json: @fossil
    end
    
end

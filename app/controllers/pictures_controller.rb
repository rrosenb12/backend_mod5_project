class PicturesController < ApplicationController
    def index
        @pictures = Picture.all 
        render json: @pictures
    end

    def show
        @picture = Picture.find(params[:id])
        render json: @picture
    end

    def create
        @picture = Picture.create(picture_params)
        render json: @picture
    end

    private

    def picture_params
        params.permit(:description, :user_id, :image)
    end
end

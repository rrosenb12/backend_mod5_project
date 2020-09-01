class PictureTagsController < ApplicationController
    def index
        @picture_tags = PictureTag.all 
        render json: @picture_tags 
    end

    def show
        @picture_tag = PictureTag.find(params[:id])
        render json: @picture_tag 
    end

    def create
        @picture_tag = PictureTag.create(picture_tag_params)
        render json: @picture_tag
    end

    private

    def picture_tag_params
        params.permit(:picture_id, :tag_id)
    end
end

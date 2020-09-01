class TagsController < ApplicationController
    def index
        @tags = Tag.all
        render json: @tags.as_json(include: [:pictures])
    end

    def show
        @tag = Tag.find(params[:id])
        render json: @tag
    end

    def create
        @tag = Tag.create(tag_params)
        render json: @tag
    end

    private

    def tag_params
        params.permit(:description)
    end
end

class TagFollowsController < ApplicationController

    skip_before_action :authorized

    def index
        @tag_follows = TagFollow.all
        render json: @tag_follows
    end

    def create
        @tag_follow = TagFollow.create(tag_follow_params)
        render json: @tag_follow
    end

    def destroy
        @tag_follow = TagFollow.find(params[:id])
        @tag_follow.destroy
    end

    private

    def tag_follow_params
        params.permit(:user_id, :tag_id)
    end

end

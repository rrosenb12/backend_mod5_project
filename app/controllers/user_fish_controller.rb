class UserFishController < ApplicationController
    skip_before_action :authorized

    
    def index
        @user_fish = UserFish.all
        render json: @user_fish
    end

    def create
        @user_fish = UserFish.create(user_fish_params)
        render json: @user_fish
    end

    private

    def user_fish_params
        params.require(:user_fish).permit(:user_id, :fish_id)
    end

end

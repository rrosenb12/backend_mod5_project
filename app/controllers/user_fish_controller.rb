class UserFishController < ApplicationController
    def index
        @user_fish = UserFish.all
        render json: @user_fish
    end
end

class UserVillagersController < ApplicationController
    skip_before_action :authorized

    
    def index
        @user_villagers = UserVillager.all
        render json: @user_villagers
    end

    def create
        @user_villager = UserVillager.create(user_villager_params)
        render json: @user_villager
    end

    private

    def user_villager_params
        params.require(:user_villager).permit(:user_id, :villager_id)
    end

end

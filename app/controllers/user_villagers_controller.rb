class UserVillagersController < ApplicationController
    def index
        @user_villagers = UserVillager.all
        render json: @user_villagers
    end
end

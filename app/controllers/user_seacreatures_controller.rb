class UserSeacreaturesController < ApplicationController
    def index
        @user_seacreatures = UserSeacreature.all
        render json: @user_seacreatures
    end
end

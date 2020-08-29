class UserSeacreaturesController < ApplicationController
    def index
        @user_seacreatures = UserSeacreature.all
        render json: @user_seacreatures
    end

    def create
        @user_seacreature = UserSeacreature.create(user_seacreature_params)
        render json: @user_seacreature
    end

    private

    def user_seacreature_params
        params.require(:user_seacreature).permit(:user_id, :sea_creature_id)
    end
end

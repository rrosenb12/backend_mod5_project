class UserFossilsController < ApplicationController
    def index
        @user_fossils = UserFossil.all
        render json: @user_fossils
    end

    def create
        @user_fossil = UserFossil.create(user_fossil_params)
        render json: @user_fossil
    end

    private

    def user_fossil_params
        params.require(:user_fossil).permit(:user_id, :fossil_id)
    end

end

class UserFossilsController < ApplicationController
    skip_before_action :authorized

    
    def index
        @user_fossils = UserFossil.all
        render json: @user_fossils
    end

    def create
        @user_fossil = UserFossil.create(user_fossil_params)
        render json: @user_fossil
    end

    def destroy
        @user_fossil = UserFossil.find(params[:id])
        @user_fossil.destroy
    end

    private

    def user_fossil_params
        params.require(:user_fossil).permit(:user_id, :fossil_id)
    end

end

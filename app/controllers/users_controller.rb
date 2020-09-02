class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users.as_json(include: [:villagers])
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: @user
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end

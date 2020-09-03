class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :index]

    def profile
        byebug
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def index
        @users = User.all
        render json: @users.as_json(include: [:villagers])
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
        else
            render json: {error: 'failed to create user'}, status: :not_acceptable
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end

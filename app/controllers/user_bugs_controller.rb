class UserBugsController < ApplicationController
    skip_before_action :authorized

    
    def index
        @user_bugs = UserBug.all
        render json: @user_bugs
    end

    def create
        @user_bug = UserBug.create(user_bug_params)
        render json: @user_bug
    end

    private

    def user_bug_params
        params.require(:user_bug).permit(:user_id, :bug_id)
    end
end

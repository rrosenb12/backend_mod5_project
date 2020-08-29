class UserBugsController < ApplicationController
    def index
        @user_bugs = UserBug.all
        render json: @user_bugs
    end
end

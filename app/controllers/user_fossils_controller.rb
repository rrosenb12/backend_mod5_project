class UserFossilsController < ApplicationController
    def index
        @user_fossils = UserFossil.all
        render json: @user_fossils
    end
end

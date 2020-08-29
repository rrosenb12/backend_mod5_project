class UserItemsController < ApplicationController
    def index
        @user_items = UserItem.all
        render json: @user_items
    end
end

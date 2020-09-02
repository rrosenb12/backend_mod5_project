class UserItemsController < ApplicationController
    skip_before_action :authorized

    
    def index
        @user_items = UserItem.all
        render json: @user_items
    end

    def create
        @user_item = UserItem.create(user_item_params)
        render json: @user_item
    end

    private

    def user_item_params
        params.require(:user_item).permit(:user_id, :item_id)
    end

end

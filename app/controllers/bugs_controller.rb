class BugsController < ApplicationController

    skip_before_action :authorized

    def index
        @bugs = Bug.all
        render json: @bugs
    end

    def show
        @bug = Bug.find(params[:id])
        render json: @bug
    end
end

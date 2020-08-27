class VillagersController < ApplicationController
    def index
        @villagers = Villager.all
        render json: @villagers
    end

    def show
        @villager = Villager.find(params[:id])
        render json: @villager
    end
end

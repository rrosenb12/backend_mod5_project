class SeaCreaturesController < ApplicationController
    def index
        @sea_creatures = SeaCreature.all
        render json: @sea_creatures
    end

    def show
        @sea_creature = SeaCreature.find(params[:id])
        render json: @sea_creature
    end
end

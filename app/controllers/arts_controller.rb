class ArtsController < ApplicationController

    def index
        render json: Art.all
    end

    def show
        art = find_art
        render json: art
    end

    private

    def find_art
        Art.find_by(params[:id])
    end


end

class ArtTagsController < ApplicationController

    def index
        render json: Art_Tag.all
    end

    def show
        art_tag = ArtTag.find_by(id: params[:id])
            if art_tag
                render json: art_tag
            else
                render json: { error: "Tag not found"}, status: :not_found
            end
    end

end

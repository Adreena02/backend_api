class LikesController < ApplicationController

    def index
        render json: Like.all        
    end

    def create
        like = Like.create!(like_params)
        Like.create
            if like.valid?
                render json: like, status: :created
            else
                render json: { error: "Unable to create"}, status: :not_found
            end
    end

    def show
        likes = Like.find_by(id: params[:id])
            if likes
                render json: likes
            else
                render json: { error: "Tag not found"}, status: :not_found
            end
    end

    private

    def like_params
        params.permit(:art_id, :user_id)
    end

    


end

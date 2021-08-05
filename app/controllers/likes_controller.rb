class LikesController < ApplicationController

    def index
        render json: Like.all        
    end

    def show
        likes = Like.find_by(id: params[:id])
            if likes
                render json: likes
            else
                render json: { error: "Tag not found"}, status: :not_found
            end
    end

    def destroy
        likes = Like.find_by(user_id: params[:id])
        if likes
            likes.destroy
            render json: "removed from favorites"
        else
            render json: { error: "Like is not found"}, status: :not_found
        end
    end
    


end

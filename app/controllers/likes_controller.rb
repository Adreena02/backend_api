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

<<<<<<< HEAD
    private

    def like_params
        params.permit(:art_id, :user_id)
    end

=======
    def destroy
        likes = Like.find_by(user_id: params[:id])
        if likes
            likes.destroy
            render json: "removed from favorites"
        else
            render json: { error: "Like is not found"}, status: :not_found
        end
    end
>>>>>>> 2817da1ccc55ba26d59d23b5ffe4102046292db7
    


end

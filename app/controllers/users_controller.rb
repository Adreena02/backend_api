require "pry"

class UsersController < ApplicationController

    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: {error: "Not able to create"}
        end
    end

    def suggestions
        user = find_user
        arts = user.top_three

        render json: arts
    end

    def destroy
        user = find_user
        user.destroy
    end

    def index
        users=User.all
        render json: users
    end
    
    def show
        user = find_user
        render json: user
    end
    
    def favorites
        user=find_user
        render json: user.arts
    end

    private

    def find_user
        User.find_by(id: params[:id])
    end

    def user_params
        params.permit(:name, :email)
    end


end

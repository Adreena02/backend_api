class UsersController < ApplicationController

    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: {error: "Not able to create"}
        end
    end

    def destroy
        user = find_user
        user.destroy
    end

    def index
        render json: User.all
    end

    def show
        user = find_user
        render json: user
    end

    private

    def find_user
        User.find_by(id: params[:id])
    end

    def user_params
        params.permit(:name, :email)
    end


end

class TagsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: Tag.all
    end

    def show
        tag = find_tag
        render json: tag
    end

    def create
        tag = Tag.create!(tag_params)
        render json: tag, status: :created
    end

    private

    def find_tag
        Tag.find_by(params[:id])
    end

    def tag_params
        params.permit(:name)
    end

    def render_unprocessable_entity_response(exeception)
        render json: { errors: exeception.record.errors.full_messages }, status: :unprocessable_entity
    end

end

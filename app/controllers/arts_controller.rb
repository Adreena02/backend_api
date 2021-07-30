class ArtsController < ApplicationController

    require 'rest-client'

    def get_artworks
        url = 'https://api.artsy.net/api'
        response = RestClient.get(url)
        render json: response
    end

end

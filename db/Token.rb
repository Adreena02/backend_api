require 'net/http'
require 'json'

client_id = '32f162072f2a0b548814'
client_secret = 'ec00aba499cec31b62ab7acada9c0756'
api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
xapp_token = JSON.parse(response.body)['token']


class Fetch 

    def parse
        client_id = '32f162072f2a0b548814'
        client_secret = 'ec00aba499cec31b62ab7acada9c0756'
        api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
        response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
        xapp_token = JSON.parse(response.body)['token']
    end

end

a = Fetch.artists.parse
puts a
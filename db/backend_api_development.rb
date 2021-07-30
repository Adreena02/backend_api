require 'net/http'
require 'json'

class Fetch 


# client_id = '9681a1bee15c3a118308'
# client_secret = 'da56cbd62f9dd16b1b9fdcd79d820502'
# api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
# response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
# xapp_token = JSON.parse(response.body)['token']


    def parse
        client_id = '9681a1bee15c3a118308'
        client_secret = 'da56cbd62f9dd16b1b9fdcd79d820502'
        api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
        response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
        xapp_token = JSON.parse(response.body)['token']

    end

    def grab
        client_id = '9681a1bee15c3a118308'
        client_secret = 'da56cbd62f9dd16b1b9fdcd79d820502'
        api_url = URI.parse('https://api.artsy.net/api/artists/andy-warhol')
        response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
        xapp_token = JSON.parse(response.body)['token']
    end

end

a = Fetch.new
puts a.grab
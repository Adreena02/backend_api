require 'net/http'
require 'rest-client'
require 'json'
require 'byebug'

class Fetch 

    # def parse
    #     client_id = '9681a1bee15c3a118308'
    #     client_secret = 'da56cbd62f9dd16b1b9fdcd79d820502'
    #     api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
    #     response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
    #     xapp_token = JSON.parse(response.body)['token']

    # end

    def grab
        # client_id = '9681a1bee15c3a118308'
        # client_secret = 'da56cbd62f9dd16b1b9fdcd79d820502'
        # api_url = URI.parse('https://api.artsy.net/api/artists/andy-warhol')
        api_url = 'https://api.artsy.net/api/artists/andy-warhol'
        # token = parse
        # byebug
        # response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
        response = RestClient.get(api_url)
        # response = Net::HTTP.get(api_url, {headers: {"X-Xapp-Token": token}})
        byebug
        # xapp_token = JSON.parse(response.body)['token']

        # curl -v -L https://api.artsy.net/api/artists/andy-warhol -H 'X-Xapp-Token:eyJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsInN1YmplY3RfYXBwbGljYXRpb24iOiI2MTA0MmQ4YTMzYzI4YTAwMGRjZjdmOTciLCJleHAiOjE2Mjg1MjU0NzIsImlhdCI6MTYyNzkyMDY3MiwiYXVkIjoiNjEwNDJkOGEzM2MyOGEwMDBkY2Y3Zjk3IiwiaXNzIjoiR3Jhdml0eSIsImp0aSI6IjYxMDgxOTIwZjBlOTY0MDAwZTE1YjFiOSJ9.lkW_Pgk828V8qjGR2YGFwL88gcTtOWVzmog0xL73ZsQ'

        # fetch(api_url, {
        #     headers:  {"X-XAPP-Token": parse}
        # })
    end

end

a = Fetch.new
puts a.grab
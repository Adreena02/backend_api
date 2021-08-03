require 'hyperclient'

client_id = '9681a1bee15c3a118308'
client_secret = 'da56cbd62f9dd16b1b9fdcd79d820502'

api = Hyperclient.new('https://api.artsy.net/api') do |api|
  api.headers['Accept'] = 'application/vnd.artsy-v2+json'
  api.headers['Content-Type'] = 'application/json'
  api.connection(default: false) do |conn|
    conn.use FaradayMiddleware::FollowRedirects
    conn.use Faraday::Response::RaiseError
    conn.request :json
    conn.response :json, content_type: /\bjson$/
    conn.adapter :net_http
  end
end

xapp_token = api.tokens.xapp_token._post(client_id: client_id, client_secret: client_secret).token
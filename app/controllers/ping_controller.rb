require 'net/http'
require 'json'
require 'socket'

class PingController < ApplicationController
  def index
    uri = URI("http://#{params[:host]}/pong")
    puts "=>[INFO] call #{uri}"
    response = Net::HTTP.get_response(uri)
    puts "=>[INFO] response #{response.body}"
    render json: {
      host: request.host,
      port: request.port,
      hostname: Socket.gethostname,
      pong: JSON.parse(response.body),
    }
  end
end

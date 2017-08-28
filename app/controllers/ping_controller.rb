require 'net/http'
require 'json'

class PingController < ApplicationController
  def index
    uri = URI("http://#{params[:host]}/pong")
    puts "=>[INFO] call #{uri}"
    response = Net::HTTP.get_response(uri)
    puts "=>[INFO] response #{response.body}"
    render json: JSON.parse(response.body)
  end
end

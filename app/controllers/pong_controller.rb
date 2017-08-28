require 'socket'

class PongController < ApplicationController
  def index
    render json: {
      status: :ok,
      host: request.host,
      port: request.port,
      hostname: Socket.gethostname,
    }
  end
end

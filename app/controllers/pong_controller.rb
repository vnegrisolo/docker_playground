class PongController < ApplicationController
  def index
    render json: {status: :ok}
  end
end

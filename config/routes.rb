Rails.application.routes.draw do
  get 'ping' => 'ping#index'
  get 'pong' => 'pong#index'
end

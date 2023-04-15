class Api::V1::GreetingsController < ApplicationController
  def index
    greeting = Greeting.order('RANDOM()').first
    response.headers['Access-Control-Allow-Origin'] = '*'
    render json: greeting
  end

end

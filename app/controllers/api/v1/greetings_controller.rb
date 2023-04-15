class Api::V1::GreetingsController < ApplicationController
  def index
    greeting = greeting = Greeting.find_by(id: rand(1..Greeting.count))
    # response.headers['Access-Control-Allow-Origin'] = '*'
    render json: greeting
  end
end

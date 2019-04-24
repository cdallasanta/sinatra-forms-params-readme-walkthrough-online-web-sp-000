require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food_form' do
    @name = params[:user_name]
    @food = params[:favorite_food]

    "My name is #{@name}, and I love #{@food}."
  end
end

class WeatherController < ApplicationController
  def index
    city = params[:city]
    response = HTTP.get("https://api.weatherbit.io/v2.0/current?city=#{city}&key=2f20527c336d4a47816ce3bde2fd2317")
    weather = response.parse(:json)
    render json: weather
  end
end

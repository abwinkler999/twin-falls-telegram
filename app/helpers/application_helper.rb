module ApplicationHelper
	require 'httparty'

  	def pull_weather(city)
			request_url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&APPID=#{WEATHER_API}"
      response = HTTParty.get(request_url)
      json = JSON.parse(response.body)
			icon = json["weather"][0]["icon"]
  		{temp: kelvin_to_fahrenheit(json["main"]["temp"]).round.to_s,
        conditions: json["weather"][0]["description"],
				icon_url: "http://openweathermap.org/img/w/" + icon + ".png",
        in_game_location: locale
      }
  	end

  	def kelvin_to_fahrenheit(k)
  		(((k-273.15) * 1.8) + 32)
	end
end

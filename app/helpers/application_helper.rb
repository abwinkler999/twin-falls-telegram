module ApplicationHelper
	require 'httparty'

  	def pull_weather()
			random_location = WEATHER_CITIES.keys.sample
			locale = WEATHER_CITIES[random_location]["locale"]
			stand_in = WEATHER_CITIES[random_location]["stand_in"]
      response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=' + stand_in)
      json = JSON.parse(response.body)
			icon = json["weather"][0]["icon"]
  		{temp: kelvin_to_fahrenheit(json["main"]["temp"]).round.to_s,
        conditions: json["weather"][0]["description"],
				icon_url: "http://openweathermap.org/img/w/" + icon + ".png",
        location: locale
      }
  	end

  	def kelvin_to_fahrenheit(k)
  		(((k-273.15) * 1.8) + 32)
	end
end

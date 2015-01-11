module ApplicationHelper
	require 'httparty'

  	def pull_weather(location=:lhasa)
  		case location
  		  when :lhasa
  		  	response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=Lhasa')
  		  	json = JSON.parse(response.body)
  		end
  		{temp: kelvin_to_fahrenheit(json["main"]["temp"]),
        conditions: json["weather"][0]["description"],
        icon: json["weather"][0]["icon"]
      }
  	end

  	def kelvin_to_fahrenheit(k)
  		(((k-273.15) * 1.8) + 32)
	end
end

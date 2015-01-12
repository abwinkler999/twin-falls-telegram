module ApplicationHelper
	require 'httparty'

  	def pull_weather()
      location = [:elliotville, :twin_falls, :samshire, :spencerville, :bright_plain, :witch_haven, :maen_hir].sample
  		case location
  		  when :elliotville
          stand_in = "Lhasa"
          locale = "Elliotville"
        when :twin_falls
          stand_in = "Aspen"
          locale = "Twin Falls"
        when :samshire
          stand_in = "Salisbury"
          locale = "Samshire"
        when :spencerville
          stand_in = "Shreveport"
          locale = "Spencerville"
         when :bright_plain
          stand_in = "Topeka"
          locale = "Bright Plain"
          when :witch_haven
          stand_in = "Miami"
          locale = "Witch Haven"
          when :maen_hir
          stand_in = "Grimsby"
          locale = "Maen Hir"
  		end
      response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=' + stand_in)
      json = JSON.parse(response.body)
  		{temp: kelvin_to_fahrenheit(json["main"]["temp"]),
        conditions: json["weather"][0]["description"],
        icon: json["weather"][0]["icon"],
        location: locale
      }
  	end

  	def kelvin_to_fahrenheit(k)
  		(((k-273.15) * 1.8) + 32)
	end
end

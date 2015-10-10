WEATHER_CITIES = YAML.load_file('config/weather_cities.yml')
if Rails.env.production?
  WEATHER_API = ENV['WEATHER_API']
else
  WEATHER_API = YAML.load_file('config/local_env.yml')['WEATHER_API']["api_key"]
end

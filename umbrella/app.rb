require "http"
require "json"

# //for long and lat
GMAPS_KEY = 'AIzaSyDKz4Y3bvrTsWpPRNn9ab55OkmcwZxLOHI'

# //for weather
PIRATE_WEATHER_KEY = '3RrQrvLmiUayQ84JSxL8D2aXw99yRKlx1N4qFDUE'
# PIRATE_WEATHER_API_KEY =  PIRATE_WEATHER_KEY

puts 'What is your location'
user_location = gets.chomp
pp "Checking the weather at #{user_location}"
# user_location = "Chicago"






maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + user_location + "&key=" + GMAPS_KEY
reqs = HTTP.get(maps_url)

 request = reqs.to_s
parsed_req = JSON.parse(reqs)
results = parsed_req["results"]
first_result = results.at(0)
# pp first_result
# pp "||||||||Boingloins|||||||||"
geo = first_result['geometry']
# pp geo['location']
location = geo['location']
latitute = location['lat']
longitude = location['lng']
# pp latitute
# pp longitude
pp "Your coordinates are #{latitute},#{longitude}"
PIRATE_WEATHER_URL = 'https://api.pirateweather.net/forecast/' + PIRATE_WEATHER_KEY + "/#{latitute},#{longitude}"
# PIRATE_WEATHER_URL = 'https://api.pirateweather.net/forecast/' + PIRATE_WEATHER_KEY + "/41.8781136,-87.6297982"
# PIRATE_WEATHER_URL = 'https://api.pirateweather.net/forecast/' + PIRATE_WEATHER_KEY + '/#{41.8887},#{-87.6355}'
weather_reqs = HTTP.get(PIRATE_WEATHER_URL)
weather_request = weather_reqs.to_s
# pp weather_request
parsed_weather_request = JSON.parse(weather_request)
pp parsed_weather_request.keys
first_layer =  parsed_weather_request['currently']
# pp first_layer['summary']
pp "It is currently #{first_layer['temperature']}"
# pp first_layer.keys
# parsed_weather_request = weather_reqs.JSON.parse(weather_reqs)
# pp parsed_weather_request

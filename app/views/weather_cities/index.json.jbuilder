json.array!(@weather_cities) do |weather_city|
  json.extract! weather_city, :id, :name, :temperature
  json.url weather_city_url(weather_city, format: :json)
end

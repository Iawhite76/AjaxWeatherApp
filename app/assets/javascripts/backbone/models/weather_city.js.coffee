class WeatherApp.Models.WeatherCity extends Backbone.Model
  paramRoot: 'weather_city'

  defaults:
    name: null
    temp: null

class WeatherApp.Collections.WeatherCitiesCollection extends Backbone.Collection
  model: WeatherApp.Models.WeatherCity
  url: '/weather_cities'

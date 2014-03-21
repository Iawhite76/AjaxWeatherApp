class WeatherApp.Routers.WeatherCitiesRouter extends Backbone.Router
  initialize: (options) ->
    @weatherCities = new WeatherApp.Collections.WeatherCitiesCollection()
    @weatherCities.reset options.weatherCities

  routes:
    "new"      : "newWeatherCity"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newWeatherCity: ->
    @view = new WeatherApp.Views.WeatherCities.NewView(collection: @weather_cities)
    $("#weather_cities").html(@view.render().el)

  index: ->
    @view = new WeatherApp.Views.WeatherCities.IndexView(weather_cities: @weather_cities)
    $("#weather_cities").html(@view.render().el)

  show: (id) ->
    weather_city = @weather_cities.get(id)

    @view = new WeatherApp.Views.WeatherCities.ShowView(model: weather_city)
    $("#weather_cities").html(@view.render().el)

  edit: (id) ->
    weather_city = @weather_cities.get(id)

    @view = new WeatherApp.Views.WeatherCities.EditView(model: weather_city)
    $("#weather_cities").html(@view.render().el)

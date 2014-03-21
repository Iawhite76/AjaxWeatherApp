WeatherApp.Views.WeatherCities ||= {}

class WeatherApp.Views.WeatherCities.IndexView extends Backbone.View
  template: JST["backbone/templates/weather_cities/index"]

  initialize: () ->
    @options.weatherCities.bind('reset', @addAll)

  addAll: () =>
    @options.weatherCities.each(@addOne)

  addOne: (weatherCity) =>
    view = new WeatherApp.Views.WeatherCities.WeatherCityView({model : weatherCity})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(weatherCities: @options.weatherCities.toJSON() ))
    @addAll()

    return this

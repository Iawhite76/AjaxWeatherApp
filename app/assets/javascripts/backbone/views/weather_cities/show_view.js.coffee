WeatherApp.Views.WeatherCities ||= {}

class WeatherApp.Views.WeatherCities.ShowView extends Backbone.View
  template: JST["backbone/templates/weather_cities/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this

WeatherApp.Views.WeatherCities ||= {}

class WeatherApp.Views.WeatherCities.WeatherCityView extends Backbone.View
  template: JST["backbone/templates/weather_cities/weather_city"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this

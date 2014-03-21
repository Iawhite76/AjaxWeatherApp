WeatherApp.Views.WeatherCities ||= {}

class WeatherApp.Views.WeatherCities.EditView extends Backbone.View
  template : JST["backbone/templates/weather_cities/edit"]

  events :
    "submit #edit-weather_city" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (weather_city) =>
        @model = weather_city
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this

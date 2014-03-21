WeatherApp.Views.WeatherCities ||= {}

class WeatherApp.Views.WeatherCities.NewView extends Backbone.View
  template: JST["backbone/templates/weather_cities/new"]

  events:
    "submit #new-weather_city": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (weather_city) =>
        @model = weather_city
        window.location.hash = "/#{@model.id}"

      error: (weather_city, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this

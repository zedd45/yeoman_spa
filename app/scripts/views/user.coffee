'use strict';

class SamsClubSpa.Views.User extends Backbone.View

  template: JST['app/scripts/templates/user.ejs']

  tagName: 'div'

  events:
    "click a[data-anchor]" : "showDetails"

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())

  showDetails: (e) ->
    e.preventDefault()
    SamsClubSpa.router.navigate "user/" + @model.get("login"), trigger: true

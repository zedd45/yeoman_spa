'use strict';

class SamsClubSpa.Views.User extends Backbone.View

  template: JST['app/scripts/templates/user.ejs']

  tagName: 'div'

  events: {}

  initialize: () ->
    @listenTo @model, 'change', @render

  render: () ->
    @$el.html @template(@model.toJSON())

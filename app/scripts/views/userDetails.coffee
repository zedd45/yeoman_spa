'use strict';

class SamsClubSpa.Views.UserDetails extends Backbone.View

  template: JST['app/scripts/templates/userDetails.ejs']

  className: 'well user-details'

  initialize: () ->
    @listenTo @model, 'change', @render
    return @

  render: ->
    @$el.html @template(@model.toJSON())

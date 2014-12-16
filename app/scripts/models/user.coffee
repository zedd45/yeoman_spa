'use strict';

class SamsClubSpa.Models.User extends Backbone.Model
  initialize: ->

  defaults:
    q: ""


  url: ->
    "https://api.github.com/search/users?" + @.get "q"


  validate: (attrs, options) ->

  parse: (response, options) ->
    response

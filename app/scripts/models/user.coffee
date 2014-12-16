'use strict';

class SamsClubSpa.Models.User extends Backbone.Model
  defaults: ->
    avatar_url: "http://forum.tribalwars.net/image.php?s=5cc6d3c4062689914a3ee9b58062364a&u=51194&dateline=1235418742"

  initialize: (username) ->
    @options = username: username
    return @


  url: ->
    "https://api.github.com/users/" + @options.username


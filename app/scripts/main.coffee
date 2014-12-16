window.SamsClubSpa =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}

  init: =>
    'use strict'

    # double arrow won't assign this to SamsCulbSpa namespace :(
    @.SamsClubSpa.router = new SamsClubSpa.Routers.Github
    @.SamsClubSpa.contentDiv = $("body > .hero-unit")

    Backbone.history.start()



$ ->
  'use strict'
  SamsClubSpa.init();

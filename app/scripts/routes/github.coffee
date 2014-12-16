'use strict';

class SamsClubSpa.Routers.Github extends Backbone.Router
    routes:
        '' : 'landing'
        "search/:query": 'searchResutlsPage'
        'user/:id': 'userDetails'

    # execute: ->
        #  quick & dirty unbind... should track & destroy the existing view
        #  to avoid memory leaks
        # SamsClubSpa.contentDiv.empty()

    landing: ->
        SamsClubSpa.contentDiv.empty().html new SamsClubSpa.Views.Landing().render()

    searchResutlsPage: (query) ->
        # SamsClubSpa.contentDiv.empty().html news SamsClubSpa.Views.SRP().render()


    userDetails: (id) ->
        debugger




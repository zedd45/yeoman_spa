'use strict';

class SamsClubSpa.Routers.Github extends Backbone.Router
    routes:
        '' : 'landing'
        "search/:query": 'searchResutlsPage'
        'user/:id': 'userDetails'

    landing: ->
        target = SamsClubSpa.contentDiv
        view = new SamsClubSpa.Views.SRP(
            model: new SamsClubSpa.Models.User
        )

        #  quick & dirty unbind... should destroy the existing view
        #  to avoid memory leaks
        target.empty()
        SamsClubSpa.contentDiv.html view.render()

    searchResutlsPage: (query) ->
        debugger


    userDetails: (id) ->
        debugger




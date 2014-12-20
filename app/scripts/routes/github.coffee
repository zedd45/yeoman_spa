'use strict';

class SamsClubSpa.Routers.Github extends Backbone.Router
    routes:
        '' : 'landing'
        "search/:query": 'searchResutlsPage'
        'user/:username': 'userDetails'

    # execute: ->
        #  quick & dirty unbind... should track & destroy the existing view
        #  to avoid memory leaks
        # SamsClubSpa.contentDiv.empty()

    landing: ->
        SamsClubSpa.contentDiv.empty().html new SamsClubSpa.Views.Landing().render()

    searchResutlsPage: (query) ->
        view = new SamsClubSpa.Views.SearchResults
            collection: new SamsClubSpa.Collections.Users()
            query: query

        SamsClubSpa.contentDiv.empty().html view.el


    userDetails: (username) ->
        userModel = new SamsClubSpa.Models.User username
        view = new SamsClubSpa.Views.UserDetails
            model: userModel

        SamsClubSpa.contentDiv.empty().html view.el

        userModel.fetch()






'use strict';

class SamsClubSpa.Views.SearchResults extends Backbone.View

  # TODO: this should add a loading indicator and remove it after the data has been retrieved / rendered
  # className: "loading"
  className: "row"

  # a function will cause this to be re-evaluated for every instance
  defaults: ->
    query: ""

  initialize: (options) ->
    @options = _.defaults( options || {}, @defaults() )

    @listenTo( @collection, "reset sync", @.render)
    # @.listenTo( @.collection, "add", @.addSomething)
    # @.listenTo( @.collection, "remove", @.removeSomethingSomethingDarkSide)

    fetchOptions =
        data: $.param( q: @options.query )

    @collection.fetch( fetchOptions )

    return @

  render: () ->
    #  this constructor won't work in IE!
    fragment = new DocumentFragment()
    @collection.each ( model ) ->
        $(fragment).append new SamsClubSpa.Views.User(
            model: model
            className: "col-md-6 col-lg-3 well"
        ).render()

    @$el.html fragment

'use strict';

class SamsClubSpa.Views.SearchResults extends Backbone.View

  className: "row loading"

  events:
    "click [data-target=start]": "startOver"

  # a function will cause this to be re-evaluated for every instance
  defaults: ->
    query: ""

  initialize: (options) ->
    @options = _.defaults options || {}, @defaults()
    @listenTo( @collection, "reset sync", @render)

    fetchOptions =
        data: $.param( q: @options.query )

    @collection.fetch( fetchOptions )

    return @

  render: ->
    #  this constructor won't work in IE!
    fragment = new DocumentFragment()
    @collection.each ( model ) ->
        $(fragment).append new SamsClubSpa.Views.User(
            model: model
            className: "col-md-6 col-lg-3 well"
        ).render()

    if @collection.length
        @$el.html fragment
    else
        @renderNoResults()

  renderNoResults: ->
    noResultsTemplate = JST['app/scripts/templates/noResults.ejs']
    @$el.html noResultsTemplate query: @options.query


  startOver: (e) ->
    e.preventDefault()
    SamsClubSpa.router.navigate "", trigger: true

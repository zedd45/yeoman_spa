'use strict';

class SamsClubSpa.Views.Landing extends Backbone.View

  template: JST['app/scripts/templates/landing.ejs']

  tagName: 'div'

  className: 'srp'

  events:
    'click button.go': 'search'
    'keyup input[type=search]': 'checkForEnter'


  initialize: ->
    _.bind @search, @
    return @

  render: ->
    # there is no model for this screen, although
    # we could use sessionStorage to persist the last selection
    @$el.html @template()

  checkForEnter: (e) ->
    if (e.keyCode is 13)
        @search()


  search: ->
    # TODO: return "clean" version
    # searchString = @$("input[type=search]").val().replace(/[&<>"'\/]/gm, "")
    searchString = @$("input[type=search]").val()
    SamsClubSpa.router.navigate "search/" + searchString, trigger: true

# global beforeEach, describe, it, assert, expect
"use strict"

describe 'SearchResults View', ->
  beforeEach ->
    @SearchResultsView = new SamsClubSpa.Views.SearchResults
        collection: new Backbone.Collection()

  it "should render no results if the collection is empty", ->
    expect( @SearchResultsView ).html().toMatch(/no results/i)

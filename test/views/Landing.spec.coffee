# global beforeEach, describe, it, assert, expect
"use strict"

describe 'SRP View', ->
  beforeEach ->
    @SRPView = new SamsClubSpa.Views.SRP()

  it "should 'submit' the search string on enter", ->
    searchInput = @SRPView.$("input")
    searchInput.val("test")
    @SRPView.$("button.go").trigger("click")
    expect( @SRPView.search ).toHaveBeenCalled()

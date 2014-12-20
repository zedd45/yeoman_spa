# global beforeEach, describe, it, assert, expect
"use strict"

describe 'User Model', ->
  beforeEach ->
    @UserModel = new SamsClubSpa.Models.User "test"

  it "should compute the URL from the user name passed in", ->
    expect(@UserModel.url).toMatch /test$/

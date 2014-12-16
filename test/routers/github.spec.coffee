# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Github Router', ->
  beforeEach ->
    @GithubRouter = new SamsClubSpa.Routers.Github();

  it 'index route', ->


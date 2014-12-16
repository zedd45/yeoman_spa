# global beforeEach, describe, it, assert, expect
"use strict"

describe 'Users Collection', ->
  beforeEach ->
    @UsersCollection = new SamsClubSpa.Collections.Users()

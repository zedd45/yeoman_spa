'use strict';

class SamsClubSpa.Collections.Users extends Backbone.Collection
  model: SamsClubSpa.Models.User
  url: 'https://api.github.com/search/users'
  parse: (response) ->
    response.items



App.ApplicationRoute = Ember.Route.extend
  init: ->
    @_super()
    App.AuthManager = AuthManager.create()

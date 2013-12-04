App.ApplicationRoute = Ember.Route.extend
  init: ->
    @_super()
    App.AuthManager = AuthManager.create()

  actions:
    logout: ->
      App.AuthManager.reset()
      @transitionTo 'todos'

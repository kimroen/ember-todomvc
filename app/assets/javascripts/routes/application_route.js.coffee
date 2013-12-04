App.ApplicationRoute = Ember.Route.extend
  init: ->
    @_super()
    $.cookie.defaults.path = '/'
    $.cookie.defaults.expires = 365
    App.AuthManager = AuthManager.create()

  actions:
    logout: ->
      App.AuthManager.reset()
      @transitionTo 'todos'

App.AuthenticatedRoute = Ember.Route.extend
  beforeModel: (transition) ->
    unless App.AuthManager.isAuthenticated()
      @redirectToLogin transition

  # Redirect to the login page and store the current transition so we can
  # run it again after login

  redirectToLogin: (transition) ->
    sessionNewController = @controllerFor 'sessions.new'
    sessionNewController.set 'attemptedTransition', transition
    @transitionTo 'sessions.new'

  actions:
    error: (reason, transition) ->
      @redirectToLogin transition

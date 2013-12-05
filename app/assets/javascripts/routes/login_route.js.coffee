App.LoginRoute = Ember.Route.extend
  # Make sure the controller doesn't keep stale data
  setupController: (controller, model) ->
    controller.setProperties
      indentification: undefined
      password: undefined
      errorMessage: undefined

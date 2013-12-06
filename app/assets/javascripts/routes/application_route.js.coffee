App.ApplicationRoute = Ember.Route.extend Ember.SimpleAuth.ApplicationRouteMixin,
  actions:
    error: ->
      # If all else fails...
      @get('session').destroy()
      @transitionTo 'login'

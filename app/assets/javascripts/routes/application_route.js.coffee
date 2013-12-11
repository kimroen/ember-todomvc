App.ApplicationRoute = Ember.Route.extend Ember.SimpleAuth.ApplicationRouteMixin,

  actions:

    logout: ->
      @get('session').destroy()
      App.reset()

    # error: ->
      # If all else fails...
      # @get('session').destroy()
      # @transitionTo 'login'

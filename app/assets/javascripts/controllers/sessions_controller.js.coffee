App.SessionsNewController = Ember.ObjectController.extend
  actions:
    loginUser: ->
      router = @get 'target'
      data = @getProperties 'username_or_email', 'password'

      $.post '/api/v1/session', data, (results) ->
        App.AuthManager.authenticate results.api_key.access_token, results.api_key.user_id
        router.transitionTo 'todos'

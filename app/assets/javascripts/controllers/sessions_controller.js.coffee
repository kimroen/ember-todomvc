App.SessionsNewController = Ember.ObjectController.extend

  attemptedTransition: null

  actions:
    loginUser: ->
      router = @get 'target'
      data = @getProperties 'username_or_email', 'password'
      attemptedTrans = @get 'attemptedTransition'

      $.post '/api/v1/session', data, (results) =>
        App.AuthManager.authenticate results.api_key.access_token, results.api_key.user_id
        if attemptedTrans
          attemptedTrans.retry()
          @set 'attemptedTransition', null
        else
          router.transitionTo 'todos'

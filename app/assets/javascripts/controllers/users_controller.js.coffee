App.UsersNewController = Ember.ObjectController.extend
  actions:
    createUser: ->
      user = @get 'model'
      user.save()

      ###
      Ember.$.post('/api/v1/users', user: data, (results) =>
        # @get('session').setup
          # access_token: results.api_key.access_token
          # results.api_key.user_id
        router.transitionTo 'todos'
      ).fail (jqxhr, textStatus, error) ->
        if jqxhr.status == 422
          errs = JSON.parse jqxhr.responseText
          user.set 'errors', errs.errors
      ###

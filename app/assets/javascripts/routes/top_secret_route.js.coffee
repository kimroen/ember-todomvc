App.TopSecretRoute = App.AuthenticatedRoute.extend
  model: ->
    @store.findAll 'user'

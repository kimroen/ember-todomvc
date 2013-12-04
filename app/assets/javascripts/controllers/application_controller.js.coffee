App.ApplicationController = Ember.Controller.extend
  currentUser: (->
    App.AuthManager.get 'apiKey.user'
  ).property 'App.AuthManager.apiKey'

  isAuthenticated: (->
    App.AuthManager.isAuthenticated()
  ).property 'App.AuthManager.apiKey'

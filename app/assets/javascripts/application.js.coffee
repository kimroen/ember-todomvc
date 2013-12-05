#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require localstorage-adapter
#= require ember-simple-auth
#= require bootstrap.min
#= require_self
#= require app

Ember.Application.initializer
  name: 'authentication'

  initialize: (container, application) ->
    Ember.SimpleAuth.setup container, application,
      routeAfterLogin: 'todos'
      routeAfterLogout: 'todos'
      serverTokenEndpoint: 'api/v1/session'

    Ember.SimpleAuth.Session.reopen
      init: ->
        @_super()
        userId = (document.cookie.match(/userId=([^;]+)/) || [])[1]
        @set 'userId', userId

      setup: (serverSession) ->
        @_super(serverSession)
        @set 'userId', serverSession.user_id

      destroy: ->
        @_super()
        @set 'userId', undefined

      userIdChanged: (->
        document.cookie = 'userId=' + @get 'userId'
      ).observes 'userId'

      user: (->
        userId = @get 'userId'
        unless Ember.isEmpty userId
          @set 'user', container.lookup('store:main').find 'user', userId
      ).property 'userId'

window.App = Ember.Application.create()

#= require_tree .

# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource 'todos', path: '/', ->

App.Router.reopen
  location: 'history'


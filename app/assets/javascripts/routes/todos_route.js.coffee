App.TodosRoute = Ember.Route.extend
  model: ->
    @store.find 'todo'

App.TodosIndexRoute = Ember.Route.extend
  model: ->
    @modelFor 'todos'

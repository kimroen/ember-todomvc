App.TodosRoute = Ember.Route.extend
  model: ->
    @store.find 'todo'

App.TodosIndexRoute = Ember.Route.extend
  model: ->
    @modelFor 'todos'

App.TodosActiveRoute = Ember.Route.extend
  model: ->
    @store.filter 'todo', (todo) ->
      !todo.get 'isCompleted'

  renderTemplate: (controller) ->
    @render 'todos/index', controller: controller

App.TodosCompletedRoute = Ember.Route.extend
  model: ->
    @store.filter 'todo', (todo) ->
      todo.get 'isCompleted'

  renderTemplate: (controller) ->
    @render 'todos/index', controller: controller

App.TodosController = Ember.ArrayController.extend

  remaining: (->
    @filterBy('isCompleted', false).get 'length'
  ).property '@each.isCompleted'

  inflection: (->
    remaining = @get 'remaining'
    if remaining == 1 then 'item' else 'items'
  ).property 'remaining'

  actions:
    createTodo: ->
      # Get the todo title set by the "New Todo" text field
      title = @get 'newTitle'
      return unless title.trim()

      # Create the new Todo model
      todo = @store.createRecord 'todo',
        title: title
        isCompleted: false

      # Clear the "New Todo" text field
      @set 'newTitle', ''

      todo.save()

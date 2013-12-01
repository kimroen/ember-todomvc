#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require localstorage-adapter
#= require_self
#= require app
@App = Ember.Application.create()

App.ApplicationAdapter = DS.LSAdapter.extend
  namespace: 'todos-emberjs'

#= require_tree .

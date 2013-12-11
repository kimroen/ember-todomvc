#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require localstorage-adapter
#= require ember-simple-auth
#= require bootstrap
#= require_self
#= require app

window.App = Ember.Application.create
  LOG_TRANSITIONS: true

#= require_tree .

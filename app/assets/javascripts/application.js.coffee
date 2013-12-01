#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require app
@App = Ember.Application.create()

App.ApplicationAdapter = DS.FixtureAdapter.extend()

#= require_tree .

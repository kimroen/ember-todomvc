###
App.ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'


App.ApplicationAdapter = DS.LSAdapter.extend
  namespace: 'todos-emberjs'
###

App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api/v1'

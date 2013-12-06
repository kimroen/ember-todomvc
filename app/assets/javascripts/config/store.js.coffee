### For potential later use:
App.ApplicationAdapter = DS.LSAdapter.extend
  namespace: 'todos-emberjs'
###

# For use with Rails:
App.ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v1'

### For use with other servers:
App.ApplicationAdapter = DS.RESTAdapter.extend
  namespace: 'api/v1'
###

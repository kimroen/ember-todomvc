App.LoginController = Ember.Controller.extend Ember.SimpleAuth.LoginControllerMixin,
  tokenRequestOptions: (identification, password) ->
    postData = [
      'grant_type=password'
      'username_or_email=' + identification
      'password=' + password
    ]
    postData = postData.join '&'
    {
      type: 'POST'
      data: postData
      contentType: 'application/x-www-form-urlencoded'
    }

  actions:
    loginFailed: (xhr, status, error) ->
      console.log xhr
      console.log status
      console.log error
      response = JSON.parse xhr.responseText
      @set 'errorMessage', response.error

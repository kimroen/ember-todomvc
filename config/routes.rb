EmberTodomvc::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # API
  namespace :api do
    # /api/... Api::
    namespace :v1 do
      resources :todo
    end
  end

  # Send everything else to the Ember-app
  match '*path', to: 'home#index', via: [:get, :post]
  root to: "home#index"
end

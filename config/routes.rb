Burroughs::Application.routes.draw do
  resources :buildings
  resources :locations

  resources :establishments do
    resources :existences
  end

  root to: 'buildings#index'
end

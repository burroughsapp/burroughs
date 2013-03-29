Burroughs::Application.routes.draw do
  resources :establishments do
    resources :existences
  end

  resources :locations

  root to: 'locations#index'
end

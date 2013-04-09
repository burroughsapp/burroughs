Burroughs::Application.routes.draw do
  get "sources/index"

  get "sources/new"

  resources :buildings do
    resources :sources
  end

  resources :locations do
    resources :sources
  end

  resources :establishments do
    resources :existences
    resources :sources
  end

  root to: 'buildings#index'
end

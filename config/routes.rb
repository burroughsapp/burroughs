Burroughs::Application.routes.draw do

  resources :buildings do
    resources :building_locations
    resources :sources
    resources :artifacts, only: [:new, :create]
  end

  resources :locations do
    resources :sources
    resources :artifacts, only: [:new, :create]
  end

  resources :establishments do
    resources :existences
    resources :sources
    resources :artifacts, only: [:new, :create]
  end

  resources :existences do
    resources :existence_locations
    resources :sources
    resources :artifacts, only: [:new, :create]
  end

  resources :artifacts, only: [:show]

  root to: 'buildings#index'
end

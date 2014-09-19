Burroughs::Application.routes.draw do

  resources :buildings do
    resources :building_locations
    resources :sources
    resources :artifacts
  end

  resources :locations do
    resources :sources
    resources :artifacts
  end

  resources :establishments do
    resources :existences
    resources :sources
    resources :artifacts
  end

  resources :existences do
    resources :existence_locations
    resources :sources
    resources :artifacts
  end

  resources :artifacts, only: [:show]

  root to: 'buildings#index'
end

Rails.application.routes.draw do
  root to: 'power_generators#index'
  resources :power_generators, only: %i[index] do
    get 'freight', on: :member
  end
end

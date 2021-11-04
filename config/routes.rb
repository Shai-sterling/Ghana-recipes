Rails.application.routes.draw do
  get 'recipes/new'
  get 'recipes/show'
  get 'recipes/edit'
  get 'starts/index'

  root "starts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

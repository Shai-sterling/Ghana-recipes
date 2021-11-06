Rails.application.routes.draw do
  
  get 'reviews/new'
  get 'reviews/edit'
  root "starts#index"

  resources :recipes do 
    resources :ingredients
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
 
  root "starts#index"

  resources :recipes do 
    resources :ingredients
  end

  resources :recipes do 
    resources :reviews
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

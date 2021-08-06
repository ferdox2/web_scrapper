Rails.application.routes.draw do
  resources :vehicles do
    match '/scrape', to: 'vehicles#scrape', via: :post, on: :collection
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end

  root to: 'vehicles#index'
end

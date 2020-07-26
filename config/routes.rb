Rails.application.routes.draw do
  root to: 'scraping#index'
  resources :scraping
end

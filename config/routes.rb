Rails.application.routes.draw do
  resources :mining_types
  get "welcome/index"
  resources :coins
  get "/inicio", to: "welcome#index"
  root "welcome#index"
  get "up" => "rails/health#show", as: :rails_health_check
end

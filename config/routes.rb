Rails.application.routes.draw do
  root to: "weights#index"
  resources :weights
end

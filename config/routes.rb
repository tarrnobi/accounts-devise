Rails.application.routes.draw do
  devise_for :users
  resources :records
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#home"
end

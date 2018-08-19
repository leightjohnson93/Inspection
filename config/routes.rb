Rails.application.routes.draw do
  resources :jobs
  resources :parts

  root 'jobs#index'

  get "/:page" => "static#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

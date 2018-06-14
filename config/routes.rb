Rails.application.routes.draw do
  put 'posts/:id', to: 'posts#update'
  resources :jobs
  root 'jobs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

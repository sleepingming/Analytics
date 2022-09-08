Rails.application.routes.draw do
  resources :heinz_data
  root 'heinz_data#index'
end

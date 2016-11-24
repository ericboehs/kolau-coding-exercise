Rails.application.routes.draw do
  resources :appointments
  root to: 'pages#home'
end

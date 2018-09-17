Rails.application.routes.draw do
 root to: 'messages#index'
 resources :notification_demo
 resources :messages
end
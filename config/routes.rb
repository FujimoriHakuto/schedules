Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'calendar/all', to: 'calendar#all'
  get 'calendar/index',to: 'calendar#index'
  devise_for :samples
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'index#index'
end

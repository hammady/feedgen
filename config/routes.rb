Rails.application.routes.draw do
  resources 'feed_channels', only: [:index, :show]

  root to: "feed_channels#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

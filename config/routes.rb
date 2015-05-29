Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'search/index'

  resources :people do
    collection { post :import }
  end

  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/contact'

  root :to => 'people#edit'
end

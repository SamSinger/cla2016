Rails.application.routes.draw do

  get 'search/index'

  resources :people do
    collection { post :import }
  end

  get 'welcome/home'

  get 'welcome/about'

  get 'welcome/contact'

  root :to => 'welcome#home'
end

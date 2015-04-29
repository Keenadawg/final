Rails.application.routes.draw do
  
  resources :holidays do
    collection { post :import }
  end
  
  devise_for :users
  
  get 'welcome/login'

  get 'welcome/home'

  get 'welcome/index'

  get 'welcome/features'

  get 'welcome/contact'

  resources :userholidays
  
  root to: 'welcome#home'
  
end  
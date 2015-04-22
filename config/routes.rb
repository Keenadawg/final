Rails.application.routes.draw do
  get 'welcome/login'

  get 'welcome/home'

  get 'welcome/index'

  get 'welcome/features'

  get 'welcome/contact'

  resources :userholidays
  
  root to: 'welcome#index'
  
end  
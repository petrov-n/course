Rails.application.routes.draw do
  devise_for :users
  get 'statics/home'
  get 'statics/cost'
  get 'statics/travel'
  get 'statics/contacts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'statics#home'
  resources :orders

end

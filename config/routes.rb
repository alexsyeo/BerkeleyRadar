Rails.application.routes.draw do
  resources :bathrooms, :only => [:new, :create, :show, :update, :edit, :destroy]
  resources :fountains, :only => [:new, :create, :show, :update, :edit, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#index'
end

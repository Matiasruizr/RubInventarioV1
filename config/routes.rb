Rails.application.routes.draw do
  resources :pinturas
  get 'inicio/index'


  #resources :materia_primas
  resources :materia_primas 
 
  root :to => 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

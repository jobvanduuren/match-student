Rails.application.routes.draw do

  resources :students
  resources :matches

  get '/my_method' => 'matches#my_method', :as => 'my_method'

end

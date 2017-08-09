Rails.application.routes.draw do

  root to: 'pages#home'

  resources :students
  resources :matches

  get '/my_method' => 'matches#my_method', :as => 'my_method'

end

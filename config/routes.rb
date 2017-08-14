Rails.application.routes.draw do

  root to: 'pages#home'
  get 'contact' => 'pages#contact'
  get 'about' => 'pages#about'
  get 'faq' => 'pages#faq'
  get 'career' => 'pages#career'
  get 'blog' => 'pages#blog'

  resources :students
  resources :matches

  get '/my_method' => 'matches#my_method', :as => 'my_method'

end

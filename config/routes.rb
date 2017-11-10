A::Application.routes.draw do
  post "users/create"
  post "home/create"
  get "home/sign_up"
  get "users/sign_up"
  get "users/show"
  post "users/update"


  get "home/index"
  get "home/login"
  post "home/checkLogin"
  get "home/logout"
  resources :users

  root 'home#zuoye1'

end

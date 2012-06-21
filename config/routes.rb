Gadwalapp::Application.routes.draw do

  authenticated :user do
    root :to => "days#index"
  end
  #resources :days
  root :to => redirect("/users/sign_in")
  
  devise_for :users
  resources :users, :only => [:show, :index] do
    resources :days

  end
end

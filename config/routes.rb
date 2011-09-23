TestKoombea::Application.routes.draw do

  devise_for :users
  root :to => "posts#index"
  resources :posts do
    resources :urls
  end
  
end

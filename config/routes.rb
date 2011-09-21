TestKoombea::Application.routes.draw do

  root :to => "posts#index"

  devise_for :users, :controllers => { :sessions => 'devise/sessions' }

  #head :moved_permanently, :location => "http://www.nuevodominio.com/"
  
  resources :posts do
    resources :urls
  end
  #resources :content
   
    #match '/' => 'posts#show', :constraints => { :subdomain => /.+/ }

end

TestKoombea::Application.routes.draw do
  
  #head :moved_permanently, :location => "http://www.nuevodominio.com/"
  
  resources :posts
  #resources :content
   
    match '/' => 'posts#show', :constraints => { :subdomain => /.+/ }  
    root :to => "posts#index"
  
  #root :to => "posts#index"

end

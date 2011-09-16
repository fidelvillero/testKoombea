TestKoombea::Application.routes.draw do
  
  #head :moved_permanently, :location => "http://www.nuevodominio.com/"
  resources :posts
  #resources :content
  
  root :to => "posts#index"

end

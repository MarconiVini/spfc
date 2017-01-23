Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard' => 'dashboard#index'
     resources :admins
     resources :posts
  end

  devise_for :admins, controllers: {sessions: 'admin/sessions'}, 
    :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "registrar" }   
  
  

  get 'home/index'

  root 'home#index'

end

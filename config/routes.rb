Rails.application.routes.draw do
  root "clients#index"
  #get 'clients/new'
   #get "/clients", to: "clients#new"
   resources  :clients
   get '/act/:status', to: 'clients#show_actorinact'

   get 'login', to: 'clients#login'
   post 'login', to: 'clients#login_user'
   get 'hemant', to: 'clients#hemant'
   delete 'logout', to: 'clients#destroy'


 
end

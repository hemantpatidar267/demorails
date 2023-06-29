Rails.application.routes.draw do
  root "clients#index"
  #get 'clients/new'
   #get "/clients", to: "clients#new"
   resources  :clients
   get '/act/:status', to: 'clients#show_actorinact'

 
end

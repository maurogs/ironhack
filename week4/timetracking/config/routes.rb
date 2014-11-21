Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/contact' => 'site#contact'

  # ALTERNATIVAS
  #get '/projects/:id' => 'projects#show'
  #get '/projects/:id/entries' => 'entries#index'

  #get '/projects' => 'projects#index'
  #get '/projects/:name' => 'projects#show'

  #get '/projects/:project_id/entries' => 'entries#index'
  #get '/projects/:project_id/entries/new' => 'entries#new'




  # NO HACER MUCHO CASO A ESTE POST
  #post '/projects/:project_id/entries' => 'entries#create'  


  #FORMA AUTOMATICA DE METER TODAS LAS SOURCES
  resources :projects do
  		resources :entries
  end


end

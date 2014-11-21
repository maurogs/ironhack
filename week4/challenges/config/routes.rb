Rails.application.routes.draw do

  get '/', to: 'challenges#home', as: :challenges_home
  #get '/show/:id' => 'challenges#show'


	resources :challenges do
  		resources :supports
  	end

end

Rails.application.routes.draw do

  ##### CAMPER ROUTES #####
  
  get '/campers', to: "campers#index", as: "campers"
  get "/campers/:id", to: "campers#show", as: "camper"
  
  ##### ACTIVITY ROUTES #####

  get '/activities', to: "activities#index", as: "activities"
  get '/activities/:id', to: "activities#show", as: 'activity'
  
  ##### CAMPERACTIVITY ROUTES #####

  get '/camper_activities/', to: "camper_activities#index", as: "camper_activities"

  get '/camper_activities/new', to: "camper_activities#new", as: "signup"
  # post '/camper_activities', to: 'camper_activities#create'

end

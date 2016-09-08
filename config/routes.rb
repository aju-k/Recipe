Rails.application.routes.draw do

  root 'recipes#index'

  get '/categories', to: 'categories#index'
  post '/create-category', to: 'categories#create'

  get '/recipes', to: 'recipes#index'
  post '/add-recipe', to: 'recipes#create'
  get '/recipe-list', to: 'recipes#recipe_list'
  get '/recipe-details/:id', to: 'recipes#recipe_details'

end

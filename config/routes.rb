Rails.application.routes.draw do

  root 'recipes#form'

  get '/categories', to: 'categories#index'
  post '/create-category', to: 'categories#create'


  get '/recipes', to: 'recipes#index'
  post '/add-recipe', to: 'recipes#create', as: 'save_recipe'
  get '/recipe-list', to: 'recipes#recipe_list'
  get '/recipe-details/:id', to: 'recipes#recipe_details'


  namespace 'api' do
    namespace 'v1' do
      get '/get_all_categories', to:'android_app/categories#get_all_categories'
      get '/get_all_recipes', to: 'android_app/recipes#get_recipes'
      post '/create_recipe', to: 'android_app/recipes#create'
      post '/save_details', to: 'android_app/scrap_details#save_details'
    end
  end


end

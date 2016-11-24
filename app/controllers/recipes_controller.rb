class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def recipe_list
    names = Recipe.get_all_names()
    names.as_json
  end

  def recipe_details
    if params[:id].present?
      recipe = Recipe.where(id: params[:id])
      if recipe.present?
        recipe.as_json
      else
        error_response(404, 'Record not found')
      end

    else
      error_response(402, 'Invalid parameters')
    end
  end

  def create
    binding.pry
    if params[:name].present? && params[:ingredients].present? && params[:description].present? &&
       params[:time_to_prepare].present? && params[:recipe_type].present? && params[:category_id].present?
      Recipe.create(name: params[:name], category_id: params[:category_id],
                    ingredients: params[:ingredients], description: params[:description],
                    time_to_prepare: params[:time_to_prepare], recipe_type: params[:recipe_type])
      success_response(200, 'Recipe added successfully')
    else
      error_response(402, 'Invalid parameters')
    end
  end







end

class Api::V1::AndroidApp::RecipesController < BaseController

  def get_recipes
    @recipe = Recipe.all
    render json: @recipe
  end

  def create
    if params[:name].present? && params[:ingredients].present? && params[:description].present? &&
       params[:time_to_prepare].present? && params[:is_veg].present?
        recipe = Recipe.create(params)
        if recipe.present?
          success_response(200, 'Recipe created successfully')
        else
          error_response(404, 'Recipe not created')
        end
    else
      error_response(404, 'Invalid parameters')
    end
  end

end
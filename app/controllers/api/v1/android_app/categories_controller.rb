class Api::V1::AndroidApp::CategoriesController < BaseController

  def get_all_categories
    @catogory = Category.get_all_categories
    render json: @catogory
  end

end

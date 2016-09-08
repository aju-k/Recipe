class CategoriesController < ApplicationController

  def index
    Category.all
  end

  def create
    if params[:name].present?
      Category.create(name: params[:name])
    end
  end


end

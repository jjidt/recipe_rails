class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end
end

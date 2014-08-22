class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    render('recipes/index.html.erb')
  end
end

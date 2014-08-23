class IngredientsController < ApplicationController
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.new(params[:ingredients])
    @recipe.save
    render('recipes/edit.html.erb')
  end

  def delete
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to :back
  end
end


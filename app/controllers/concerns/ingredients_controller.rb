class IngredientsController < ActionController

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.new(params[:ingredients])
    render('/recipes')
  end

end


class RecipesController < ApplicationController
  def index
    @recipes = Recipe.order(:name)
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipes])
    if @recipe.save
      render('recipes/show.html.erb')
    else
      render('recipes/new.html.erb')
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipes])
    render('recipes/edit.html.erb')
  end

end

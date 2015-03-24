class RecipesController < ApplicationController
  before_action :find_recipe, only: [:edit, :update, :show, :destroy]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  private
  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :batch_size, :boil_time, :OG, :FG, :IBU, :ABV, :SRM, :grain, :hops, :yeast, :directions, :notes)
  end
end

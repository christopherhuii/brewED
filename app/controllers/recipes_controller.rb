class RecipesController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show, :destroy]
  before_action :find_recipe, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all.order("created_at DESC")
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      redirect_to user_recipe_path(@recipe.user, @recipe)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @recipe.update(recipe_params)
      redirect_to user_recipe_path(@recipe.user, @recipe)
    else
      render 'edit'
    end
  end

  def show
    @comment = Comment.new
  end

  def destroy
    if @recipe.destroy
      redirect_to user_recipes_path(@user)
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :batch_size, :boil_time, :OG, :FG, :IBU, :ABV, :SRM, :notes, :image, :beer_style,
                                    grains_attributes: [:id, :description, :done, :_destroy],
                                    hops_attributes: [:id, :description, :done, :_destroy],
                                    yeasts_attributes: [:id, :description, :done, :_destroy],
                                    miscs_attributes: [:id, :description, :done, :_destroy],
                                    directions_attributes: [:id, :description, :done, :_destroy])
  end
end

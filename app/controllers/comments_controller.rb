class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to user_recipe_path(@recipe.user, @recipe)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

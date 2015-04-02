class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to root_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

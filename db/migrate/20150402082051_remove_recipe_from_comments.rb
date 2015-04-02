class RemoveRecipeFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :recipe
  end
end

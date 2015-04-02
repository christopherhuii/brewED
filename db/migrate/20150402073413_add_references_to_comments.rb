class AddReferencesToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :recipe_id
    add_reference :comments, :recipe, index: true
    add_foreign_key :comments, :recipes
  end
end

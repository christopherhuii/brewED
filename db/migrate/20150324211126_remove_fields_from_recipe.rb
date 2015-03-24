class RemoveFieldsFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :grain, :text
    remove_column :recipes, :hops, :text
    remove_column :recipes, :yeast, :text
    remove_column :recipes, :directions, :text
  end
end

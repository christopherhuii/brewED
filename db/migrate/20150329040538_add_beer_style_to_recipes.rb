class AddBeerStyleToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :beer_style, :string
  end
end

class ChangeFieldTypeInRecipes < ActiveRecord::Migration
  def change
    change_column :recipes, :batch_size, :string
    change_column :recipes, :boil_time, :string
  end
end

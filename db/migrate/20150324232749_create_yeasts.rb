class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.text :description
      t.belongs_to :recipe, index: true

      t.timestamps null: false
    end
    add_foreign_key :yeasts, :recipes
  end
end
